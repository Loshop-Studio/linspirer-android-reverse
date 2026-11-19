package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.Resource;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MultiTransformation<T> implements Transformation<T> {

    /* renamed from: id */
    public String f2117id;
    public final Collection<? extends Transformation<T>> transformations;

    @SafeVarargs
    public MultiTransformation(Transformation<T>... transformationArr) {
        if (transformationArr.length < 1) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.transformations = Arrays.asList(transformationArr);
    }

    @Override // com.bumptech.glide.load.Transformation
    public String getId() {
        if (this.f2117id == null) {
            StringBuilder sb = new StringBuilder();
            Iterator<? extends Transformation<T>> it = this.transformations.iterator();
            while (it.hasNext()) {
                sb.append(it.next().getId());
            }
            this.f2117id = sb.toString();
        }
        return this.f2117id;
    }

    @Override // com.bumptech.glide.load.Transformation
    public Resource<T> transform(Resource<T> resource, int i, int i2) {
        Iterator<? extends Transformation<T>> it = this.transformations.iterator();
        Resource<T> resource2 = resource;
        while (it.hasNext()) {
            Resource<T> resourceTransform = it.next().transform(resource2, i, i2);
            if (resource2 != null && !resource2.equals(resource) && !resource2.equals(resourceTransform)) {
                resource2.recycle();
            }
            resource2 = resourceTransform;
        }
        return resource2;
    }

    public MultiTransformation(Collection<? extends Transformation<T>> collection) {
        if (collection.size() >= 1) {
            this.transformations = collection;
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }
}
