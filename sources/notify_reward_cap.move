module magma_caps::notify_reward_cap {
    use sui::{object::id_from_address, package::{Self, Publisher}};

    public struct NOTIFY_REWARD_CAP has drop {}

    #[error]
    const ErrInvalidVoterID: vector<u8> = b"invalid voter id";

    // some one or some object can be allowed to notify reward to a voter & gauge, only if he provides this capability
    public struct NotifyRewardCap has key, store {
        id: UID,
        voter_id: ID,
        who: ID,
    }

    public fun who(_self: &NotifyRewardCap): ID {
        abort (0)
    }

    public fun validate_notify_reward_voter_id(_self: &NotifyRewardCap, _voter_id: ID) {
        abort (0)
    }

    public fun create(
        _pub: &Publisher,
        _voter_id: ID,
        _whom: ID,
        _ctx: &mut TxContext,
    ): NotifyRewardCap {
        abort (0)
    }

    public fun grant(_pub: &Publisher, _voter_id: ID, _receiver: address, _ctx: &mut TxContext) {
        abort (0)
    }
}
