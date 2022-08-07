
<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin"></a>

# Module `0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::GoldCoin`



-  [Struct `GoldCoin`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_GoldCoin)
-  [Function `setup_and_mint`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_setup_and_mint)
-  [Function `transfer`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_transfer)


<pre><code><b>use</b> <a href="">0x1::signer</a>;
<b>use</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin">0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::BasicCoin</a>;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_GoldCoin"></a>

## Struct `GoldCoin`



<pre><code><b>struct</b> <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin">GoldCoin</a> <b>has</b> drop
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

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_setup_and_mint"></a>

## Function `setup_and_mint`



<pre><code><b>public</b> <b>fun</b> <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_setup_and_mint">setup_and_mint</a>(account: &<a href="">signer</a>, amount: u64)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_setup_and_mint">setup_and_mint</a>(account: &<a href="">signer</a>, amount: u64) {
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance">BasicCoin::publish_balance</a>&lt;<a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin">GoldCoin</a>&gt;(account);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint">BasicCoin::mint</a>&lt;<a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin">GoldCoin</a>&gt;(<a href="_address_of">signer::address_of</a>(account), amount, <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin">GoldCoin</a>{});
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_transfer"></a>

## Function `transfer`



<pre><code><b>public</b> <b>fun</b> <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_transfer">transfer</a>(from: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin_transfer">transfer</a>(from: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64) {
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">BasicCoin::transfer</a>&lt;<a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin">GoldCoin</a>&gt;(from, <b>to</b>, amount, <a href="GoldCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_GoldCoin">GoldCoin</a> {});
}
</code></pre>



</details>
