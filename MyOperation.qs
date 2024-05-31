namespace MyOperation {
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation MyOperation() : Result {
        use q = Qubit();
            H(q);
            let r = M(q);

            if (M(q) == One) {
                let r = X(q);                
            }

            Reset(q);
            return r;
    }
}