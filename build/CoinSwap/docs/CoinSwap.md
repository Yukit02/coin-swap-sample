
<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap"></a>

# Module `0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::CoinSwap`



-  [Resource `LiquidityPool`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool)
-  [Constants](#@Constants_0)
-  [Function `create_pool`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_create_pool)
-  [Function `get_input_price`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_get_input_price)
-  [Function `coin1_to_coin2_swap_input`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_coin1_to_coin2_swap_input)
-  [Function `add_liquidity`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_add_liquidity)
-  [Function `remove_liquidity`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_remove_liquidity)


<pre><code><b>use</b> <a href="">0x1::error</a>;
<b>use</b> <a href="">0x1::signer</a>;
<b>use</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin">0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::BasicCoin</a>;
<b>use</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::PoolToken</a>;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool"></a>

## Resource `LiquidityPool`



<pre><code><b>struct</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt; <b>has</b> key
</code></pre>



<details>
<summary>Fields</summary>


<dl>
<dt>
<code>coin1: u64</code>
</dt>
<dd>

</dd>
<dt>
<code>coin2: u64</code>
</dt>
<dd>

</dd>
<dt>
<code>share: u64</code>
</dt>
<dd>

</dd>
</dl>


</details>

<a name="@Constants_0"></a>

## Constants


<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_ECOINSWAP_ADDRESS"></a>



<pre><code><b>const</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_ECOINSWAP_ADDRESS">ECOINSWAP_ADDRESS</a>: u64 = 0;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_EPOOL"></a>



<pre><code><b>const</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_EPOOL">EPOOL</a>: u64 = 0;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_create_pool"></a>

## Function `create_pool`



<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_create_pool">create_pool</a>&lt;CoinType1: drop, CoinType2: drop&gt;(coinswap: &<a href="">signer</a>, requester: &<a href="">signer</a>, coin1: u64, coin2: u64, share: u64, witness1: CoinType1, witness2: CoinType2)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_create_pool">create_pool</a>&lt;CoinType1: drop, CoinType2: drop&gt;(
    coinswap: &<a href="">signer</a>,
    requester: &<a href="">signer</a>,
    coin1: u64,
    coin2: u64,
    share: u64,
    witness1: CoinType1,
    witness2: CoinType2
) {
    // Create a pool at @<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>.
    // TODO: If the balance is already published, this step should be skipped rather than <b>abort</b>.
    // TODO: Alternatively, `<b>struct</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>` could be refactored <b>to</b> actually hold the coin (e.g., coin1: CoinType1).
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance">BasicCoin::publish_balance</a>&lt;CoinType1&gt;(coinswap);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance">BasicCoin::publish_balance</a>&lt;CoinType2&gt;(coinswap);
    <b>assert</b>!(<a href="_address_of">signer::address_of</a>(coinswap) == @<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>, <a href="_invalid_argument">error::invalid_argument</a>(<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_ECOINSWAP_ADDRESS">ECOINSWAP_ADDRESS</a>));
    <b>assert</b>!(!<b>exists</b>&lt;<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt;&gt;(<a href="_address_of">signer::address_of</a>(coinswap)), <a href="_already_exists">error::already_exists</a>(<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_EPOOL">EPOOL</a>));
    <b>move_to</b>(coinswap, <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt;{coin1, coin2, share});

    // Transfer the initial liquidity of CoinType1 and CoinType2 <b>to</b> the pool under @<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>.
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType1&gt;(requester, <a href="_address_of">signer::address_of</a>(coinswap), coin1, witness1);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType2&gt;(requester, <a href="_address_of">signer::address_of</a>(coinswap), coin2, witness2);

    // Mint <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a> and deposit it in the account of requester.
    <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_setup_and_mint">PoolToken::setup_and_mint</a>&lt;CoinType1, CoinType2&gt;(requester, share);
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_get_input_price"></a>

## Function `get_input_price`



<pre><code><b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_get_input_price">get_input_price</a>(input_amount: u64, input_reserve: u64, output_reserve: u64): u64
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_get_input_price">get_input_price</a>(input_amount: u64, input_reserve: u64, output_reserve: u64): u64 {
    <b>let</b> input_amount_with_fee = input_amount * 997;
    <b>let</b> numerator = input_amount_with_fee * output_reserve;
    <b>let</b> denominator = (input_reserve * 1000) + input_amount_with_fee;
    numerator / denominator
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_coin1_to_coin2_swap_input"></a>

## Function `coin1_to_coin2_swap_input`



<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_coin1_to_coin2_swap_input">coin1_to_coin2_swap_input</a>&lt;CoinType1: drop, CoinType2: drop&gt;(coinswap: &<a href="">signer</a>, requester: &<a href="">signer</a>, coin1: u64, witness1: CoinType1, witness2: CoinType2)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_coin1_to_coin2_swap_input">coin1_to_coin2_swap_input</a>&lt;CoinType1: drop, CoinType2: drop&gt;(
    coinswap: &<a href="">signer</a>,
    requester: &<a href="">signer</a>,
    coin1: u64,
    witness1: CoinType1,
    witness2: CoinType2
) <b>acquires</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a> {
    <b>assert</b>!(<a href="_address_of">signer::address_of</a>(coinswap) == @<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>, <a href="_invalid_argument">error::invalid_argument</a>(<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_ECOINSWAP_ADDRESS">ECOINSWAP_ADDRESS</a>));
    <b>assert</b>!(<b>exists</b>&lt;<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt;&gt;(<a href="_address_of">signer::address_of</a>(coinswap)), <a href="_not_found">error::not_found</a>(<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_EPOOL">EPOOL</a>));
    <b>let</b> pool = <b>borrow_global_mut</b>&lt;<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt;&gt;(<a href="_address_of">signer::address_of</a>(coinswap));
    <b>let</b> coin2 = <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_get_input_price">get_input_price</a>(coin1, pool.coin1, pool.coin2);
    pool.coin1 = pool.coin1 + coin1;
    pool.coin2 = pool.coin2 - coin2;

    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType1&gt;(requester, <a href="_address_of">signer::address_of</a>(coinswap), coin1, witness1);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType2&gt;(coinswap, <a href="_address_of">signer::address_of</a>(requester), coin2, witness2);
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_add_liquidity"></a>

## Function `add_liquidity`



<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_add_liquidity">add_liquidity</a>&lt;CoinType1: drop, CoinType2: drop&gt;(account: &<a href="">signer</a>, coin1: u64, coin2: u64, witness1: CoinType1, witness2: CoinType2)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_add_liquidity">add_liquidity</a>&lt;CoinType1: drop, CoinType2: drop&gt;(
    account: &<a href="">signer</a>,
    coin1: u64,
    coin2: u64,
    witness1: CoinType1,
    witness2: CoinType2,
) <b>acquires</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a> {
    <b>let</b> pool = <b>borrow_global_mut</b>&lt;<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt;&gt;(@<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>);

    <b>let</b> coin1_added = coin1;
    <b>let</b> share_minted = (coin1_added * pool.share) / pool.coin1;
    <b>let</b> coin2_added = (share_minted * pool.coin2) / pool.share;

    pool.coin1 = pool.coin1 + coin1_added;
    pool.coin2 = pool.coin2 + coin2_added;
    pool.share = pool.share + share_minted;

    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType1&gt;(account, @<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>, coin1, witness1);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType2&gt;(account, @<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>, coin2, witness2);
    <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_mint">PoolToken::mint</a>&lt;CoinType1, CoinType2&gt;(<a href="_address_of">signer::address_of</a>(account), share_minted)
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_remove_liquidity"></a>

## Function `remove_liquidity`



<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_remove_liquidity">remove_liquidity</a>&lt;CoinType1: drop, CoinType2: drop&gt;(coinswap: &<a href="">signer</a>, requester: &<a href="">signer</a>, share: u64, witness1: CoinType1, witness2: CoinType2)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_remove_liquidity">remove_liquidity</a>&lt;CoinType1: drop, CoinType2: drop&gt;(
    coinswap: &<a href="">signer</a>,
    requester: &<a href="">signer</a>,
    share: u64,
    witness1: CoinType1,
    witness2: CoinType2,
) <b>acquires</b> <a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a> {
    <b>let</b> pool = <b>borrow_global_mut</b>&lt;<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap_LiquidityPool">LiquidityPool</a>&lt;CoinType1, CoinType2&gt;&gt;(@<a href="CoinSwap.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_CoinSwap">CoinSwap</a>);

    <b>let</b> coin1_removed = (pool.coin1 * share) / pool.share;
    <b>let</b> coin2_removed = (pool.coin2 * share) / pool.share;

    pool.coin1 = pool.coin1 - coin1_removed;
    pool.coin2 = pool.coin2 - coin2_removed;
    pool.share = pool.share - share;

    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType1&gt;(coinswap, <a href="_address_of">signer::address_of</a>(requester), coin1_removed, witness1);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;CoinType2&gt;(coinswap, <a href="_address_of">signer::address_of</a>(requester), coin2_removed, witness2);
    <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_burn">PoolToken::burn</a>&lt;CoinType1, CoinType2&gt;(<a href="_address_of">signer::address_of</a>(requester), share)
}
</code></pre>



</details>
