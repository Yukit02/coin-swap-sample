module CoinSwap::GoldCoin {
    use std::signer;
    use CoinSwap::BasicCoin;

    struct GoldCoin has drop {}

    public entry fun setup_and_mint(account: &signer, amount: u64) {
        BasicCoin::publish_balance<GoldCoin>(account);
        BasicCoin::mint<GoldCoin>(signer::address_of(account), amount, GoldCoin{});
    }

    public entry fun transfer(from: &signer, to: address, amount: u64) {
        BasicCoin::transfer<GoldCoin>(from, to, amount, GoldCoin {});
    }
}
