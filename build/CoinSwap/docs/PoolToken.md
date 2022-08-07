
<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken"></a>

# Module `0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::PoolToken`



-  [Struct `PoolToken`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_PoolToken)
-  [Function `setup_and_mint`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_setup_and_mint)
-  [Function `transfer`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_transfer)
-  [Function `mint`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_mint)
-  [Function `burn`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_burn)


<pre><code><b>use</b> <a href="">0x1::signer</a>;
<b>use</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin">0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::BasicCoin</a>;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_PoolToken"></a>

## Struct `PoolToken`



<pre><code><b>struct</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt; <b>has</b> drop
</code></pre>



<details>
<summary>Fields</summary>


<dl>
<dt>
<code>dummy_field: bool</code>
</dt>
<dd>

</dd>
</dl>


</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_setup_and_mint"></a>

## Function `setup_and_mint`



<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_setup_and_mint">setup_and_mint</a>&lt;CoinType1, CoinType2&gt;(account: &<a href="">signer</a>, amount: u64)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_setup_and_mint">setup_and_mint</a>&lt;CoinType1, CoinType2&gt;(account: &<a href="">signer</a>, amount: u64) {
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance">BasicCoin::publish_balance</a>&lt;<a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt;&gt;(account);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint">BasicCoin::mint</a>&lt;<a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt;&gt;(<a href="_address_of">signer::address_of</a>(account), amount, <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a> {});
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_transfer"></a>

## Function `transfer`



<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_transfer">transfer</a>&lt;CoinType1, CoinType2&gt;(from: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_transfer">transfer</a>&lt;CoinType1, CoinType2&gt;(from: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64) {
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;<a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt;&gt;(from, <b>to</b>, amount, <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt; {});
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_mint"></a>

## Function `mint`



<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_mint">mint</a>&lt;CoinType1, CoinType2&gt;(mint_addr: <b>address</b>, amount: u64)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_mint">mint</a>&lt;CoinType1, CoinType2&gt;(mint_addr: <b>address</b>, amount: u64) {
    // Deposit `total_value` amount of tokens <b>to</b> mint_addr's balance
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint">BasicCoin::mint</a>(mint_addr, amount, <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt; {});
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_burn"></a>

## Function `burn`



<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_burn">burn</a>&lt;CoinType1, CoinType2&gt;(burn_addr: <b>address</b>, amount: u64)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken_burn">burn</a>&lt;CoinType1, CoinType2&gt;(burn_addr: <b>address</b>, amount: u64) {
    // Deposit `total_value` amount of tokens <b>to</b> mint_addr's balance
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_burn">BasicCoin::burn</a>(burn_addr, amount, <a href="PoolToken.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_PoolToken">PoolToken</a>&lt;CoinType1, CoinType2&gt; {});
}
</code></pre>



</details>
