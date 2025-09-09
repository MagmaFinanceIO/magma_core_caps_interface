module magma_caps::voter_cap {
    use magma_caps::gauge_cap;
    use sui::package::Publisher;

    // bind to a gauge, a representation of the authority to call limited funs of Gauge
    public struct VoterCap has key, store {
        id: UID,
        voter_id: ID,
    }

    public fun get_voter_id(_self: &VoterCap): ID {
        abort (0)
    }

    public fun create_voter_cap(_pub: &Publisher, _voter_id: ID, _ctx: &mut TxContext): VoterCap {
        abort (0)
    }
}
