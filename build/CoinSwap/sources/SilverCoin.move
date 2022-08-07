module CoinSwap::SilverCoin {
    use std::signer;
    use CoinSwap::BasicCoin;

    struct SilverCoin has drop {}

    public entry fun setup_and_mint(account: &signer, amount: u64) {
        BasicCoin::publish_balance<SilverCoin>(account);
        BasicCoin::mint<SilverCoin>(signer::address_of(account), amount, SilverCoin {});
    }

    public entry fun transfer(from: &signer, to: address, amount: u64) {
        BasicCoin::transfer<SilverCoin>(from, to, amount, SilverCoin {});
    }
}
