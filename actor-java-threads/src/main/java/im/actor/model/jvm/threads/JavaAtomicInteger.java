package im.actor.model.jvm.threads;

import java.util.concurrent.atomic.AtomicInteger;

import im.actor.model.droidkit.actors.utils.AtomicIntegerCompat;

/**
 * Created by ex3ndr on 16.02.15.
 */
public class JavaAtomicInteger extends AtomicIntegerCompat {

    private final AtomicInteger atomicInteger;

    public JavaAtomicInteger(int value) {
        atomicInteger = new AtomicInteger(value);
    }

    @Override
    public int get() {
        return atomicInteger.get();
    }

    @Override
    public int incrementAndGet() {
        return atomicInteger.incrementAndGet();
    }

    @Override
    public int getAndIncrement() {
        return atomicInteger.getAndIncrement();
    }

    @Override
    public void compareAndSet(int exp, int v) {
        atomicInteger.compareAndSet(exp, v);
    }

    @Override
    public void set(int v) {
        atomicInteger.set(v);
    }
}
