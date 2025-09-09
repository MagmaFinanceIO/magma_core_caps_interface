module magma_caps::gauge_cap {
    use sui::package;

    public struct GAUGE_CAP has drop {}

    public struct CreateCap has key, store {
        id: UID,
    }

    // bind to a pool, a representation of authority to call limited funs of Pool
    public struct GaugeCap has key, store {
        id: UID,
        gauge_id: ID,
        pool_id: ID,
    }

    public fun grant_create_cap(_pub: &package::Publisher, _who: address, _ctx: &mut TxContext) {
        abort (0)
    }

    public fun get_gauge_id(_self: &GaugeCap): ID {
        abort (0)
    }

    public fun get_pool_id(_self: &GaugeCap): ID {
        abort (0)
    }

    public fun create_gauge_cap(
        _: &CreateCap,
        _pool: ID,
        _gauge_id: ID,
        _ctx: &mut TxContext,
    ): GaugeCap {
        abort (0)
    }
}
