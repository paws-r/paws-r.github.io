<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_update_custom_key_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the properties of a custom key store

### Description

Changes the properties of a custom key store. You can use this operation
to change the properties of an CloudHSM key store or an external key
store.

Use the required `CustomKeyStoreId` parameter to identify the custom key
store. Use the remaining optional parameters to change its properties.
This operation does not return any property values. To verify the
updated property values, use the `describe_custom_key_stores` operation.

This operation is part of the [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive integration
of KMS with the isolation and control of a key store that you own and
manage.

When updating the properties of an external key store, verify that the
updated settings connect your key store, via the external key store
proxy, to the same external key manager as the previous settings, or to
a backup or snapshot of the external key manager with the same
cryptographic keys. If the updated connection settings fail, you can fix
them and retry, although an extended delay might disrupt Amazon Web
Services services. However, if KMS permanently loses its access to
cryptographic keys, ciphertext encrypted under those keys is
unrecoverable.

For external key stores:

Some external key managers provide a simpler method for updating an
external key store. For details, see your external key manager
documentation.

When updating an external key store in the KMS console, you can upload a
JSON-based proxy configuration file with the desired values. You cannot
upload the proxy configuration file to the `update_custom_key_store`
operation. However, you can use the file to help you determine the
correct values for the `update_custom_key_store` parameters.

For an CloudHSM key store, you can use this operation to change the
custom key store friendly name (`NewCustomKeyStoreName`), to tell KMS
about a change to the `kmsuser` crypto user password
(`KeyStorePassword`), or to associate the custom key store with a
different, but related, CloudHSM cluster (`CloudHsmClusterId`). To
update any property of an CloudHSM key store, the `ConnectionState` of
the CloudHSM key store must be `DISCONNECTED`.

For an external key store, you can use this operation to change the
custom key store friendly name (`NewCustomKeyStoreName`), or to tell KMS
about a change to the external key store proxy authentication
credentials (`XksProxyAuthenticationCredential`), connection method
(`XksProxyConnectivity`), external proxy endpoint
(`XksProxyUriEndpoint`) and path (`XksProxyUriPath`). For external key
stores with an `XksProxyConnectivity` of `VPC_ENDPOINT_SERVICE`, you can
also update the Amazon VPC endpoint service name
(`XksProxyVpcEndpointServiceName`). To update most properties of an
external key store, the `ConnectionState` of the external key store must
be `DISCONNECTED`. However, you can update the `CustomKeyStoreName`,
`XksProxyAuthenticationCredential`, and `XksProxyUriPath` of an external
key store when it is in the CONNECTED or DISCONNECTED state.

If your update requires a `DISCONNECTED` state, before using
`update_custom_key_store`, use the `disconnect_custom_key_store`
operation to disconnect the custom key store. After the
`update_custom_key_store` operation completes, use the
`connect_custom_key_store` to reconnect the custom key store. To find
the `ConnectionState` of the custom key store, use the
`describe_custom_key_stores` operation.

Before updating the custom key store, verify that the new values allow
KMS to connect the custom key store to its backing key store. For
example, before you change the `XksProxyUriPath` value, verify that the
external key store proxy is reachable at the new path.

If the operation succeeds, it returns a JSON object with no properties.

**Cross-account use**: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

**Required permissions**:
[kms:UpdateCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

**Related operations:**

-   `connect_custom_key_store`

-   `create_custom_key_store`

-   `delete_custom_key_store`

-   `describe_custom_key_stores`

-   `disconnect_custom_key_store`

### Usage

    kms_update_custom_key_store(CustomKeyStoreId, NewCustomKeyStoreName,
      KeyStorePassword, CloudHsmClusterId, XksProxyUriEndpoint,
      XksProxyUriPath, XksProxyVpcEndpointServiceName,
      XksProxyAuthenticationCredential, XksProxyConnectivity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_update_custom_key_store_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>[required] Identifies the custom key store that you want to
update. Enter the ID of the custom key store. To find the ID of a custom
key store, use the <code>describe_custom_key_stores</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_update_custom_key_store_:_NewCustomKeyStoreName">NewCustomKeyStoreName</code></td>
<td><p>Changes the friendly name of the custom key store to the value
that you specify. The custom key store name must be unique in the Amazon
Web Services account.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p>
<p>To change this value, an CloudHSM key store must be disconnected. An
external key store can be connected or disconnected.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_update_custom_key_store_:_KeyStorePassword">KeyStorePassword</code></td>
<td><p>Enter the current password of the <code>kmsuser</code> crypto
user (CU) in the CloudHSM cluster that is associated with the custom key
store. This parameter is valid only for custom key stores with a
<code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
<p>This parameter tells KMS the current password of the
<code>kmsuser</code> crypto user (CU). It does not set or change the
password of any users in the CloudHSM cluster.</p>
<p>To change this value, the CloudHSM key store must be
disconnected.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_update_custom_key_store_:_CloudHsmClusterId">CloudHsmClusterId</code></td>
<td><p>Associates the custom key store with a related CloudHSM cluster.
This parameter is valid only for custom key stores with a
<code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
<p>Enter the cluster ID of the cluster that you used to create the
custom key store or a cluster that shares a backup history and has the
same cluster certificate as the original cluster. You cannot use this
parameter to associate a custom key store with an unrelated cluster. In
addition, the replacement cluster must <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">fulfill
the requirements</a> for a cluster associated with a custom key store.
To view the cluster certificate of a cluster, use the <a
href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a>
operation.</p>
<p>To change this value, the CloudHSM key store must be
disconnected.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_update_custom_key_store_:_XksProxyUriEndpoint">XksProxyUriEndpoint</code></td>
<td><p>Changes the URI endpoint that KMS uses to connect to your
external key store proxy (XKS proxy). This parameter is valid only for
custom key stores with a <code>CustomKeyStoreType</code> of
<code>EXTERNAL_KEY_STORE</code>.</p>
<p>For external key stores with an <code>XksProxyConnectivity</code>
value of <code>PUBLIC_ENDPOINT</code>, the protocol must be HTTPS.</p>
<p>For external key stores with an <code>XksProxyConnectivity</code>
value of <code>VPC_ENDPOINT_SERVICE</code>, specify <code
style="white-space: pre;">⁠https://⁠</code> followed by the private DNS
name associated with the VPC endpoint service. Each external key store
must use a different private DNS name.</p>
<p>The combined <code>XksProxyUriEndpoint</code> and
<code>XksProxyUriPath</code> values must be unique in the Amazon Web
Services account and Region.</p>
<p>To change this value, the external key store must be
disconnected.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_update_custom_key_store_:_XksProxyUriPath">XksProxyUriPath</code></td>
<td><p>Changes the base path to the proxy APIs for this external key
store. To find this value, see the documentation for your external key
manager and external key store proxy (XKS proxy). This parameter is
valid only for custom key stores with a <code>CustomKeyStoreType</code>
of <code>EXTERNAL_KEY_STORE</code>.</p>
<p>The value must start with <code>/</code> and must end with <code
style="white-space: pre;">⁠/kms/xks/v1⁠</code>, where <code>v1</code>
represents the version of the KMS external key store proxy API. You can
include an optional prefix between the required elements such as <code
style="white-space: pre;">⁠/example/kms/xks/v1⁠</code>.</p>
<p>The combined <code>XksProxyUriEndpoint</code> and
<code>XksProxyUriPath</code> values must be unique in the Amazon Web
Services account and Region.</p>
<p>You can change this value when the external key store is connected or
disconnected.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_update_custom_key_store_:_XksProxyVpcEndpointServiceName">XksProxyVpcEndpointServiceName</code></td>
<td><p>Changes the name that KMS uses to identify the Amazon VPC
endpoint service for your external key store proxy (XKS proxy). This
parameter is valid when the <code>CustomKeyStoreType</code> is
<code>EXTERNAL_KEY_STORE</code> and the
<code>XksProxyConnectivity</code> is
<code>VPC_ENDPOINT_SERVICE</code>.</p>
<p>To change this value, the external key store must be
disconnected.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_update_custom_key_store_:_XksProxyAuthenticationCredential">XksProxyAuthenticationCredential</code></td>
<td><p>Changes the credentials that KMS uses to sign requests to the
external key store proxy (XKS proxy). This parameter is valid only for
custom key stores with a <code>CustomKeyStoreType</code> of
<code>EXTERNAL_KEY_STORE</code>.</p>
<p>You must specify both the <code>AccessKeyId</code> and
<code>SecretAccessKey</code> value in the authentication credential,
even if you are only updating one value.</p>
<p>This parameter doesn't establish or change your authentication
credentials on the proxy. It just tells KMS the credential that you
established with your external key store proxy. For example, if you
rotate the credential on your external key store proxy, you can use this
parameter to update the credential in KMS.</p>
<p>You can change this value when the external key store is connected or
disconnected.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_update_custom_key_store_:_XksProxyConnectivity">XksProxyConnectivity</code></td>
<td><p>Changes the connectivity setting for the external key store. To
indicate that the external key store proxy uses a Amazon VPC endpoint
service to communicate with KMS, specify
<code>VPC_ENDPOINT_SERVICE</code>. Otherwise, specify
<code>PUBLIC_ENDPOINT</code>.</p>
<p>If you change the <code>XksProxyConnectivity</code> to
<code>VPC_ENDPOINT_SERVICE</code>, you must also change the
<code>XksProxyUriEndpoint</code> and add an
<code>XksProxyVpcEndpointServiceName</code> value.</p>
<p>If you change the <code>XksProxyConnectivity</code> to
<code>PUBLIC_ENDPOINT</code>, you must also change the
<code>XksProxyUriEndpoint</code> and specify a null or empty string for
the <code>XksProxyVpcEndpointServiceName</code> value.</p>
<p>To change this value, the external key store must be
disconnected.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_custom_key_store(
      CustomKeyStoreId = "string",
      NewCustomKeyStoreName = "string",
      KeyStorePassword = "string",
      CloudHsmClusterId = "string",
      XksProxyUriEndpoint = "string",
      XksProxyUriPath = "string",
      XksProxyVpcEndpointServiceName = "string",
      XksProxyAuthenticationCredential = list(
        AccessKeyId = "string",
        RawSecretAccessKey = "string"
      ),
      XksProxyConnectivity = "PUBLIC_ENDPOINT"|"VPC_ENDPOINT_SERVICE"
    )

### Examples

    ## Not run: 
    # This example changes the friendly name of the AWS KMS custom key store
    # to the name that you specify. This operation does not return any data.
    # To verify that the operation worked, use the DescribeCustomKeyStores
    # operation.
    svc$update_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0",
      NewCustomKeyStoreName = "DevelopmentKeys"
    )

    # This example tells AWS KMS the password for the kmsuser crypto user in
    # the AWS CloudHSM cluster that is associated with the AWS KMS custom key
    # store. (It does not change the password in the CloudHSM cluster.) This
    # operation does not return any data.
    svc$update_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0",
      KeyStorePassword = "ExamplePassword"
    )

    # This example changes the AWS CloudHSM cluster that is associated with an
    # AWS CloudHSM key store to a related cluster, such as a different backup
    # of the same cluster. This operation does not return any data. To verify
    # that the operation worked, use the DescribeCustomKeyStores operation.
    svc$update_custom_key_store(
      CloudHsmClusterId = "cluster-234abcdefABC",
      CustomKeyStoreId = "cks-1234567890abcdef0"
    )

    # To update the proxy authentication credential for your external key
    # store, specify both the <code>RawSecretAccessKey</code> and the
    # <code>AccessKeyId</code>, even if you are changing only one of the
    # values. You can use this feature to fix an invalid credential or to
    # change the credential when the external key store proxy rotates it.
    svc$update_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0",
      XksProxyAuthenticationCredential = list(
        AccessKeyId = "ABCDE12345670EXAMPLE",
        RawSecretAccessKey = "DXjSUawnel2fr6SKC7G25CNxTyWKE5PF9XX6H/u9pSo="
      )
    )

    # This example updates the proxy URI path for an external key store
    svc$update_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0",
      XksProxyUriPath = "/new-path/kms/xks/v1"
    )

    # To change the external key store proxy connectivity option from public
    # endpoint connectivity to VPC endpoint service connectivity, in addition
    # to changing the <code>XksProxyConnectivity</code> value, you must change
    # the <code>XksProxyUriEndpoint</code> value to reflect the private DNS
    # name associated with the VPC endpoint service. You must also add an
    # <code>XksProxyVpcEndpointServiceName</code> value.
    svc$update_custom_key_store(
      CustomKeyStoreId = "cks-1234567890abcdef0",
      XksProxyConnectivity = "VPC_ENDPOINT_SERVICE",
      XksProxyUriEndpoint = "https://myproxy-private.xks.example.com",
      XksProxyVpcEndpointServiceName = "com.amazonaws.vpce.us-east-1.vpce-svc-example"
    )

    ## End(Not run)
