
<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin"></a>

# Module `0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00::BasicCoin`

This module defines a minimal and generic Coin and Balance.


-  [Struct `Coin`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin)
-  [Resource `Balance`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance)
-  [Constants](#@Constants_0)
-  [Function `publish_balance`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance)
-  [Function `mint`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint)
-  [Function `burn`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_burn)
-  [Function `balance_of`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_balance_of)
-  [Function `transfer`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer)
-  [Function `withdraw`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_withdraw)
-  [Function `deposit`](#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_deposit)


<pre><code><b>use</b> <a href="">0x1::error</a>;
<b>use</b> <a href="">0x1::signer</a>;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin"></a>

## Struct `Coin`



<pre><code><b>struct</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt; <b>has</b> store
</code></pre>



<details>
<summary>Fields</summary>


<dl>
<dt>
<code>value: u64</code>
</dt>
<dd>

</dd>
</dl>


</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance"></a>

## Resource `Balance`



<pre><code><b>struct</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt; <b>has</b> key
</code></pre>



<details>
<summary>Fields</summary>


<dl>
<dt>
<code>coin: <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">BasicCoin::Coin</a>&lt;CoinType&gt;</code>
</dt>
<dd>

</dd>
</dl>


</details>

<a name="@Constants_0"></a>

## Constants


<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EALREADY_HAS_BALANCE"></a>



<pre><code><b>const</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EALREADY_HAS_BALANCE">EALREADY_HAS_BALANCE</a>: u64 = 2;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EALREADY_INITIALIZED"></a>



<pre><code><b>const</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EALREADY_INITIALIZED">EALREADY_INITIALIZED</a>: u64 = 3;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EEQUAL_ADDR"></a>



<pre><code><b>const</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EEQUAL_ADDR">EEQUAL_ADDR</a>: u64 = 4;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EINSUFFICIENT_BALANCE"></a>



<pre><code><b>const</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EINSUFFICIENT_BALANCE">EINSUFFICIENT_BALANCE</a>: u64 = 1;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_ENOT_MODULE_OWNER"></a>

Error codes


<pre><code><b>const</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_ENOT_MODULE_OWNER">ENOT_MODULE_OWNER</a>: u64 = 0;
</code></pre>



<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance"></a>

## Function `publish_balance`



<pre><code><b>public</b> <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance">publish_balance</a>&lt;CoinType&gt;(account: &<a href="">signer</a>)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> entry <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_publish_balance">publish_balance</a>&lt;CoinType&gt;(account: &<a href="">signer</a>) {
    <b>let</b> empty_coin = <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt; { value: 0 };
    <b>assert</b>!(!<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(<a href="_address_of">signer::address_of</a>(account)), <a href="_already_exists">error::already_exists</a>(<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EALREADY_HAS_BALANCE">EALREADY_HAS_BALANCE</a>));
    <b>move_to</b>(account, <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt; { coin:  empty_coin });
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



<pre><code><b>include</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Schema_publish">Schema_publish</a>&lt;CoinType&gt; {addr: <a href="_address_of">signer::address_of</a>(account), amount: 0};
</code></pre>




<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Schema_publish"></a>


<pre><code><b>schema</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Schema_publish">Schema_publish</a>&lt;CoinType&gt; {
    addr: <b>address</b>;
    amount: u64;
    <b>aborts_if</b> <b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr);
    <b>ensures</b> <b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr);
    <b>let</b> <b>post</b> balance_post = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
    <b>ensures</b> balance_post == amount;
}
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint"></a>

## Function `mint`

Mint <code>amount</code> tokens to <code>mint_addr</code>. This method requires a witness with <code>CoinType</code> so that the
module that owns <code>CoinType</code> can decide the minting policy.


<pre><code><b>public</b> <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint">mint</a>&lt;CoinType: drop&gt;(mint_addr: <b>address</b>, amount: u64, _witness: CoinType)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> entry <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_mint">mint</a>&lt;CoinType: drop&gt;(mint_addr: <b>address</b>, amount: u64, _witness: CoinType) <b>acquires</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a> {
    // Deposit `amount` of tokens <b>to</b> mint_addr's balance
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_deposit">deposit</a>(mint_addr, <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt; { value: amount });
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



<pre><code><b>include</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_DepositSchema">DepositSchema</a>&lt;CoinType&gt; {addr: mint_addr, amount};
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_burn"></a>

## Function `burn`

Burn <code>amount</code> tokens from <code>burn_addr</code>. This method requires a witness with <code>CoinType</code> so that the
module that owns <code>CoinType</code> can decide the burning policy.


<pre><code><b>public</b> <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_burn">burn</a>&lt;CoinType: drop&gt;(burn_addr: <b>address</b>, amount: u64, _witness: CoinType)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> entry <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_burn">burn</a>&lt;CoinType: drop&gt;(burn_addr: <b>address</b>, amount: u64, _witness: CoinType) <b>acquires</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a> {
    // Withdraw `amount` of tokens from mint_addr's balance
    <b>let</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a> { value: _ } = <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_withdraw">withdraw</a>&lt;CoinType&gt;(burn_addr, amount);
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_balance_of"></a>

## Function `balance_of`



<pre><code><b>public</b> <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_balance_of">balance_of</a>&lt;CoinType&gt;(owner: <b>address</b>): u64
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> entry <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_balance_of">balance_of</a>&lt;CoinType&gt;(owner: <b>address</b>): u64 <b>acquires</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a> {
    <b>borrow_global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(owner).coin.value
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



<pre><code><b>pragma</b> aborts_if_is_strict;
<b>aborts_if</b> !<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(owner);
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer"></a>

## Function `transfer`

Transfers <code>amount</code> of tokens from <code>from</code> to <code><b>to</b></code>. This method requires a witness with <code>CoinType</code> so that the
module that owns <code>CoinType</code> can decide the transferring policy.


<pre><code><b>public</b> <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">transfer</a>&lt;CoinType: drop&gt;(from: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64, _witness: CoinType)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> entry <b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_transfer">transfer</a>&lt;CoinType: drop&gt;(from: &<a href="">signer</a>, <b>to</b>: <b>address</b>, amount: u64, _witness: CoinType) <b>acquires</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a> {
    <b>let</b> from_addr = <a href="_address_of">signer::address_of</a>(from);
    <b>assert</b>!(from_addr != <b>to</b>, <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EEQUAL_ADDR">EEQUAL_ADDR</a>);
    <b>let</b> check = <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_withdraw">withdraw</a>&lt;CoinType&gt;(from_addr, amount);
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_deposit">deposit</a>&lt;CoinType&gt;(<b>to</b>, check);
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



<pre><code><b>let</b> addr_from = <a href="_address_of">signer::address_of</a>(from);
<b>let</b> balance_from = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr_from).coin.value;
<b>let</b> balance_to = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(<b>to</b>).coin.value;
<b>let</b> <b>post</b> balance_from_post = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr_from).coin.value;
<b>let</b> <b>post</b> balance_to_post = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(<b>to</b>).coin.value;
<b>aborts_if</b> !<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr_from);
<b>aborts_if</b> !<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(<b>to</b>);
<b>aborts_if</b> balance_from &lt; amount;
<b>aborts_if</b> balance_to + amount &gt; MAX_U64;
<b>aborts_if</b> addr_from == <b>to</b>;
<b>ensures</b> balance_from_post == balance_from - amount;
<b>ensures</b> balance_to_post == balance_to + amount;
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_withdraw"></a>

## Function `withdraw`



<pre><code><b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_withdraw">withdraw</a>&lt;CoinType&gt;(addr: <b>address</b>, amount: u64): <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">BasicCoin::Coin</a>&lt;CoinType&gt;
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_withdraw">withdraw</a>&lt;CoinType&gt;(addr: <b>address</b>, amount: u64) : <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt; <b>acquires</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a> {
    <b>let</b> balance = <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_balance_of">balance_of</a>&lt;CoinType&gt;(addr);
    <b>assert</b>!(balance &gt;= amount, <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_EINSUFFICIENT_BALANCE">EINSUFFICIENT_BALANCE</a>);
    <b>let</b> balance_ref = &<b>mut</b> <b>borrow_global_mut</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
    *balance_ref = balance - amount;
    <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt; { value: amount }
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



<pre><code><b>let</b> balance = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
<b>aborts_if</b> !<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr);
<b>aborts_if</b> balance &lt; amount;
<b>let</b> <b>post</b> balance_post = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
<b>ensures</b> result == <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt; { value: amount };
<b>ensures</b> balance_post == balance - amount;
</code></pre>



</details>

<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_deposit"></a>

## Function `deposit`



<pre><code><b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_deposit">deposit</a>&lt;CoinType&gt;(addr: <b>address</b>, check: <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">BasicCoin::Coin</a>&lt;CoinType&gt;)
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>fun</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_deposit">deposit</a>&lt;CoinType&gt;(addr: <b>address</b>, check: <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a>&lt;CoinType&gt;) <b>acquires</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>{
    <b>let</b> balance = <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_balance_of">balance_of</a>&lt;CoinType&gt;(addr);
    <b>let</b> balance_ref = &<b>mut</b> <b>borrow_global_mut</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
    <b>let</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Coin">Coin</a> { value } = check;
    *balance_ref = balance + value;
}
</code></pre>



</details>

<details>
<summary>Specification</summary>



<pre><code><b>let</b> balance = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
<b>let</b> check_value = check.value;
<b>aborts_if</b> !<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr);
<b>aborts_if</b> balance + check_value &gt; MAX_U64;
<b>let</b> <b>post</b> balance_post = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
<b>ensures</b> balance_post == balance + check_value;
</code></pre>




<a name="0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_DepositSchema"></a>


<pre><code><b>schema</b> <a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_DepositSchema">DepositSchema</a>&lt;CoinType&gt; {
    addr: <b>address</b>;
    amount: u64;
    <b>let</b> balance = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
    <b>aborts_if</b> !<b>exists</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr);
    <b>aborts_if</b> balance + amount &gt; MAX_U64;
    <b>let</b> <b>post</b> balance_post = <b>global</b>&lt;<a href="BasicCoin.md#0xd5f95fa368dc2b538cbfb2d290f8040ec7658d35c4f30d354032d74fea8aee00_BasicCoin_Balance">Balance</a>&lt;CoinType&gt;&gt;(addr).coin.value;
    <b>ensures</b> balance_post == balance + amount;
}
</code></pre>



</details>
