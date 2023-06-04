<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_describe_custom_key_stores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about custom key stores in the account and Region

### Description

Gets information about [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
in the account and Region.

This operation is part of the [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive integration
of KMS with the isolation and control of a key store that you own and
manage.

By default, this operation returns information about all custom key
stores in the account and Region. To get only information about a
particular custom key store, use either the `CustomKeyStoreName` or
`CustomKeyStoreId` parameter (but not both).

To determine whether the custom key store is connected to its CloudHSM
cluster or external key store proxy, use the `ConnectionState` element
in the response. If an attempt to connect the custom key store failed,
the `ConnectionState` value is `FAILED` and the `ConnectionErrorCode`
element in the response indicates the cause of the failure. For help
interpreting the `ConnectionErrorCode`, see CustomKeyStoresListEntry.

Custom key stores have a `DISCONNECTED` connection state if the key
store has never been connected or you used the
`disconnect_custom_key_store` operation to disconnect it. Otherwise, the
connection state is CONNECTED. If your custom key store connection state
is `CONNECTED` but you are having trouble using it, verify that the
backing store is active and available. For an CloudHSM key store, verify
that the associated CloudHSM cluster is active and contains the minimum
number of HSMs required for the operation, if any. For an external key
store, verify that the external key store proxy and its associated
external key manager are reachable and enabled.

For help repairing your CloudHSM key store, see the [Troubleshooting
CloudHSM key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html).
For help repairing your external key store, see the [Troubleshooting
external key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html).
Both topics are in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

**Required permissions**:
[kms:DescribeCustomKeyStores](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

**Related operations:**

-   `connect_custom_key_store`

-   `create_custom_key_store`

-   `delete_custom_key_store`

-   `disconnect_custom_key_store`

-   `update_custom_key_store`

### Usage

    kms_describe_custom_key_stores(CustomKeyStoreId, CustomKeyStoreName,
      Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_describe_custom_key_stores_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>Gets only information about the specified custom key store. Enter
the key store ID.</p>
<p>By default, this operation gets information about all custom key
stores in the account and Region. To limit the output to a particular
custom key store, provide either the <code>CustomKeyStoreId</code> or
<code>CustomKeyStoreName</code> parameter, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_describe_custom_key_stores_:_CustomKeyStoreName">CustomKeyStoreName</code></td>
<td><p>Gets only information about the specified custom key store. Enter
the friendly name of the custom key store.</p>
<p>By default, this operation gets information about all custom key
stores in the account and Region. To limit the output to a particular
custom key store, provide either the <code>CustomKeyStoreId</code> or
<code>CustomKeyStoreName</code> parameter, but not both.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_describe_custom_key_stores_:_Limit">Limit</code></td>
<td><p>Use this parameter to specify the maximum number of items to
return. When this value is present, KMS does not return more than the
specified number of items, but it might return fewer.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_describe_custom_key_stores_:_Marker">Marker</code></td>
<td><p>Use this parameter in a subsequent request after you receive a
response with truncated results. Set it to the value of
<code>NextMarker</code> from the truncated response you just
received.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomKeyStores = list(
        list(
          CustomKeyStoreId = "string",
          CustomKeyStoreName = "string",
          CloudHsmClusterId = "string",
          TrustAnchorCertificate = "string",
          ConnectionState = "CONNECTED"|"CONNECTING"|"FAILED"|"DISCONNECTED"|"DISCONNECTING",
          ConnectionErrorCode = "INVALID_CREDENTIALS"|"CLUSTER_NOT_FOUND"|"NETWORK_ERRORS"|"INTERNAL_ERROR"|"INSUFFICIENT_CLOUDHSM_HSMS"|"USER_LOCKED_OUT"|"USER_NOT_FOUND"|"USER_LOGGED_IN"|"SUBNET_NOT_FOUND"|"INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET"|"XKS_PROXY_ACCESS_DENIED"|"XKS_PROXY_NOT_REACHABLE"|"XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND"|"XKS_PROXY_INVALID_RESPONSE"|"XKS_PROXY_INVALID_CONFIGURATION"|"XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION"|"XKS_PROXY_TIMED_OUT"|"XKS_PROXY_INVALID_TLS_CONFIGURATION",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          CustomKeyStoreType = "AWS_CLOUDHSM"|"EXTERNAL_KEY_STORE",
          XksProxyConfiguration = list(
            Connectivity = "PUBLIC_ENDPOINT"|"VPC_ENDPOINT_SERVICE",
            AccessKeyId = "string",
            UriEndpoint = "string",
            UriPath = "string",
            VpcEndpointServiceName = "string"
          )
        )
      ),
      NextMarker = "string",
      Truncated = TRUE|FALSE
    )

### Request syntax

    svc$describe_custom_key_stores(
      CustomKeyStoreId = "string",
      CustomKeyStoreName = "string",
      Limit = 123,
      Marker = "string"
    )

### Examples

    ## Not run: 
    # This example gets detailed information about all AWS KMS custom key
    # stores in an AWS account and Region. To get all key stores, do not enter
    # a custom key store name or ID.
    svc$describe_custom_key_stores()

    # This example gets detailed information about a particular AWS CloudHSM
    # key store by specifying its friendly name. To limit the output to a
    # particular custom key store, provide either the custom key store name or
    # ID.
    svc$describe_custom_key_stores(
      CustomKeyStoreName = "ExampleKeyStore"
    )

    # This example gets detailed information about an external key store by
    # specifying its ID.  The example external key store proxy uses public
    # endpoint connectivity.
    svc$describe_custom_key_stores(
      CustomKeyStoreId = "cks-9876543210fedcba9"
    )

    # This example gets detailed information about a particular external key
    # store by specifying its friendly name. To limit the output to a
    # particular custom key store, provide either the custom key store name or
    # ID. The proxy URI path for this external key store includes an optional
    # prefix. Also, because this example external key store uses VPC endpoint
    # connectivity, the response includes the associated VPC endpoint service
    # name.
    svc$describe_custom_key_stores(
      CustomKeyStoreName = "VPCExternalKeystore"
    )

    ## End(Not run)
