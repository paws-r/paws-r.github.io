<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_connect_custom_key_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Connects or reconnects a custom key store to its backing key store

### Description

Connects or reconnects a [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
to its backing key store. For an CloudHSM key store,
`connect_custom_key_store` connects the key store to its associated
CloudHSM cluster. For an external key store, `connect_custom_key_store`
connects the key store to the external key store proxy that communicates
with your external key manager.

The custom key store must be connected before you can create KMS keys in
the key store or use the KMS keys it contains. You can disconnect and
reconnect a custom key store at any time.

The connection process for a custom key store can take an extended
amount of time to complete. This operation starts the connection
process, but it does not wait for it to complete. When it succeeds, this
operation quickly returns an HTTP 200 response and a JSON object with no
properties. However, this response does not indicate that the custom key
store is connected. To get the connection state of the custom key store,
use the `describe_custom_key_stores` operation.

This operation is part of the [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive integration
of KMS with the isolation and control of a key store that you own and
manage.

The `connect_custom_key_store` operation might fail for various reasons.
To find the reason, use the `describe_custom_key_stores` operation and
see the `ConnectionErrorCode` in the response. For help interpreting the
`ConnectionErrorCode`, see CustomKeyStoresListEntry.

To fix the failure, use the `disconnect_custom_key_store` operation to
disconnect the custom key store, correct the error, use the
`update_custom_key_store` operation if necessary, and then use
`connect_custom_key_store` again.

**CloudHSM key store**

During the connection process for an CloudHSM key store, KMS finds the
CloudHSM cluster that is associated with the custom key store, creates
the connection infrastructure, connects to the cluster, logs into the
CloudHSM client as the `kmsuser` CU, and rotates its password.

To connect an CloudHSM key store, its associated CloudHSM cluster must
have at least one active HSM. To get the number of active HSMs in a
cluster, use the
[DescribeClusters](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation. To add HSMs to the cluster, use the
[CreateHsm](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html)
operation. Also, the [`kmsuser` crypto
user](https://docs.aws.amazon.com/kms/latest/developerguide/#concept-kmsuser)
(CU) must not be logged into the cluster. This prevents KMS from using
this account to log in.

If you are having trouble connecting or disconnecting a CloudHSM key
store, see [Troubleshooting an CloudHSM key
store](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the *Key Management Service Developer Guide*.

**External key store**

When you connect an external key store that uses public endpoint
connectivity, KMS tests its ability to communicate with your external
key manager by sending a request via the external key store proxy.

When you connect to an external key store that uses VPC endpoint service
connectivity, KMS establishes the networking elements that it needs to
communicate with your external key manager via the external key store
proxy. This includes creating an interface endpoint to the VPC endpoint
service and a private hosted zone for traffic between KMS and the VPC
endpoint service.

To connect an external key store, KMS must be able to connect to the
external key store proxy, the external key store proxy must be able to
communicate with your external key manager, and the external key manager
must be available for cryptographic operations.

If you are having trouble connecting or disconnecting an external key
store, see [Troubleshooting an external key
store](https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

**Required permissions**:
[kms:ConnectCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

**Related operations**

-   `create_custom_key_store`

-   `delete_custom_key_store`

-   `describe_custom_key_stores`

-   `disconnect_custom_key_store`

-   `update_custom_key_store`

### Usage

    kms_connect_custom_key_store(CustomKeyStoreId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_connect_custom_key_store_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>[required] Enter the key store ID of the custom key store that
you want to connect. To find the ID of a custom key store, use the
<code>describe_custom_key_stores</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$connect_custom_key_store(
      CustomKeyStoreId = "string"
    )

### Examples

    ## Not run: 
    # This example connects an AWS KMS custom key store to its backing key
    # store. For an AWS CloudHSM key store, it connects the key store to its
    # AWS CloudHSM cluster. For an external key store, it connects the key
    # store to the external key store proxy that communicates with your
    # external key manager. This operation does not return any data. To verify
    # that the custom key store is connected, use the
    # <code>DescribeCustomKeyStores</code> operation.
    svc$connect_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0"
    )

    ## End(Not run)
