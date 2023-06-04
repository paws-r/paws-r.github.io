<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_disconnect_custom_key_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disconnects the custom key store from its backing key store

### Description

Disconnects the [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
from its backing key store. This operation disconnects an CloudHSM key
store from its associated CloudHSM cluster or disconnects an external
key store from the external key store proxy that communicates with your
external key manager.

This operation is part of the [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive integration
of KMS with the isolation and control of a key store that you own and
manage.

While a custom key store is disconnected, you can manage the custom key
store and its KMS keys, but you cannot create or use its KMS keys. You
can reconnect the custom key store at any time.

While a custom key store is disconnected, all attempts to create KMS
keys in the custom key store or to use existing KMS keys in
[cryptographic
operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
will fail. This action can prevent users from storing and accessing
sensitive data.

When you disconnect a custom key store, its `ConnectionState` changes to
`Disconnected`. To find the connection state of a custom key store, use
the `describe_custom_key_stores` operation. To reconnect a custom key
store, use the `connect_custom_key_store` operation.

If the operation succeeds, it returns a JSON object with no properties.

**Cross-account use**: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

**Required permissions**:
[kms:DisconnectCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

**Related operations:**

-   `connect_custom_key_store`

-   `create_custom_key_store`

-   `delete_custom_key_store`

-   `describe_custom_key_stores`

-   `update_custom_key_store`

### Usage

    kms_disconnect_custom_key_store(CustomKeyStoreId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_disconnect_custom_key_store_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>[required] Enter the ID of the custom key store you want to
disconnect. To find the ID of a custom key store, use the
<code>describe_custom_key_stores</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disconnect_custom_key_store(
      CustomKeyStoreId = "string"
    )

### Examples

    ## Not run: 
    # This example disconnects an AWS KMS custom key store from its backing
    # key store. For an AWS CloudHSM key store, it disconnects the key store
    # from its AWS CloudHSM cluster. For an external key store, it disconnects
    # the key store from the external key store proxy that communicates with
    # your external key manager. This operation doesn't return any data. To
    # verify that the custom key store is disconnected, use the
    # <code>DescribeCustomKeyStores</code> operation.
    svc$disconnect_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0"
    )

    ## End(Not run)
