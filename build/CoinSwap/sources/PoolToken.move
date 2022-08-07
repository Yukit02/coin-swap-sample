module CoinSwap::PoolToken {
    use std::signer;
    use CoinSwap::BasicCoin;

    struct PoolToken<phantom CoinType1, phantom CoinType2> has drop {}

    public entry fun setup_and_mint<CoinType1, CoinType2>(account: &signer, amount: u64) {
        BasicCoin::publish_balance<PoolToken<CoinType1, CoinType2>>(account);
        BasicCoin::mint<PoolToken<CoinType1, CoinType2>>(signer::address_of(account), amount, PoolToken {});
    }

    public entry fun transfer<CoinType1, CoinType2>(from: &signer, to: address, amount: u64) {
        BasicCoin::transfer<PoolToken<CoinType1, CoinType2>>(from, to, amount, PoolToken<CoinType1, CoinType2> {});
    }

    public entry fun mint<CoinType1, CoinType2>(mint_addr: address, amount: u64) {
        // Deposit `total_value` amount of tokens to mint_addr's balance
        BasicCoin::mint(mint_addr, amount, PoolToken<CoinType1, CoinType2> {});
    }

    public entry fun burn<CoinType1, CoinType2>(burn_addr: address, amount: u64) {
        // Deposit `total_value` amount of tokens to mint_addr's balance
        BasicCoin::burn(burn_addr, amount, PoolToken<CoinType1, CoinType2> {});
    }
}
