<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_delete_custom_key_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom key store

### Description

Deletes a [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
This operation does not affect any backing elements of the custom key
store. It does not delete the CloudHSM cluster that is associated with
an CloudHSM key store, or affect any users or keys in the cluster. For
an external key store, it does not affect the external key store proxy,
external key manager, or any external keys.

This operation is part of the [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive integration
of KMS with the isolation and control of a key store that you own and
manage.

The custom key store that you delete cannot contain any [KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys).
Before deleting the key store, verify that you will never need to use
any of the KMS keys in the key store for any [cryptographic
operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).
Then, use `schedule_key_deletion` to delete the KMS keys from the key
store. After the required waiting period expires and all KMS keys are
deleted from the custom key store, use `disconnect_custom_key_store` to
disconnect the key store from KMS. Then, you can delete the custom key
store.

For keys in an CloudHSM key store, the `schedule_key_deletion` operation
makes a best effort to delete the key material from the associated
cluster. However, you might need to manually [delete the orphaned key
material](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
from the cluster and its backups. KMS never creates, manages, or deletes
cryptographic keys in the external key manager associated with an
external key store. You must manage them using your external key manager
tools.

Instead of deleting the custom key store, consider using the
`disconnect_custom_key_store` operation to disconnect the custom key
store from its backing key store. While the key store is disconnected,
you cannot create or use the KMS keys in the key store. But, you do not
need to delete KMS keys and you can reconnect a disconnected custom key
store at any time.

If the operation succeeds, it returns a JSON object with no properties.

**Cross-account use**: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

**Required permissions**:
[kms:DeleteCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

**Related operations:**

-   `connect_custom_key_store`

-   `create_custom_key_store`

-   `describe_custom_key_stores`

-   `disconnect_custom_key_store`

-   `update_custom_key_store`

### Usage

    kms_delete_custom_key_store(CustomKeyStoreId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_delete_custom_key_store_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>[required] Enter the ID of the custom key store you want to
delete. To find the ID of a custom key store, use the
<code>describe_custom_key_stores</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_key_store(
      CustomKeyStoreId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes a custom key store from AWS KMS. This operation
    # does not affect the backing key store, such as a CloudHSM cluster,
    # external key store proxy, or your external key manager. This operation
    # doesn't return any data. To verify that the operation was successful,
    # use the DescribeCustomKeyStores operation.
    svc$delete_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0"
    )

    ## End(Not run)
