<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_create_custom_key_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom key store backed by a key store that you own and manage

### Description

Creates a [custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
backed by a key store that you own and manage. When you use a KMS key in
a custom key store for a cryptographic operation, the cryptographic
operation is actually performed in your key store using your keys. KMS
supports [CloudHSM key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html)
backed by an [CloudHSM
cluster](https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
and [external key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html)
backed by an external key store proxy and external key manager outside
of Amazon Web Services.

This operation is part of the [custom key
stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive integration
of KMS with the isolation and control of a key store that you own and
manage.

Before you create the custom key store, the required elements must be in
place and operational. We recommend that you use the test tools that KMS
provides to verify the configuration your external key store proxy. For
details about the required elements and verification tests, see
[Assemble the prerequisites (for CloudHSM key
stores)](https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
or [Assemble the prerequisites (for external key
stores)](https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements)
in the *Key Management Service Developer Guide*.

To create a custom key store, use the following parameters.

-   To create an CloudHSM key store, specify the `CustomKeyStoreName`,
    `CloudHsmClusterId`, `KeyStorePassword`, and
    `TrustAnchorCertificate`. The `CustomKeyStoreType` parameter is
    optional for CloudHSM key stores. If you include it, set it to the
    default value, `AWS_CLOUDHSM`. For help with failures, see
    [Troubleshooting an CloudHSM key
    store](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
    in the *Key Management Service Developer Guide*.

-   To create an external key store, specify the `CustomKeyStoreName`
    and a `CustomKeyStoreType` of `EXTERNAL_KEY_STORE`. Also, specify
    values for `XksProxyConnectivity`,
    `XksProxyAuthenticationCredential`, `XksProxyUriEndpoint`, and
    `XksProxyUriPath`. If your `XksProxyConnectivity` value is
    `VPC_ENDPOINT_SERVICE`, specify the `XksProxyVpcEndpointServiceName`
    parameter. For help with failures, see [Troubleshooting an external
    key
    store](https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html)
    in the *Key Management Service Developer Guide*.

For external key stores:

Some external key managers provide a simpler method for creating an
external key store. For details, see your external key manager
documentation.

When creating an external key store in the KMS console, you can upload a
JSON-based proxy configuration file with the desired values. You cannot
use a proxy configuration with the `create_custom_key_store` operation.
However, you can use the values in the file to help you determine the
correct values for the `create_custom_key_store` parameters.

When the operation completes successfully, it returns the ID of the new
custom key store. Before you can use your new custom key store, you need
to use the `connect_custom_key_store` operation to connect a new
CloudHSM key store to its CloudHSM cluster, or to connect a new external
key store to the external key store proxy for your external key manager.
Even if you are not going to use your custom key store immediately, you
might want to connect it to verify that all settings are correct and
then disconnect it until you are ready to use it.

For help with failures, see [Troubleshooting a custom key
store](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

**Required permissions**:
[kms:CreateCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy).

**Related operations:**

-   `connect_custom_key_store`

-   `delete_custom_key_store`

-   `describe_custom_key_stores`

-   `disconnect_custom_key_store`

-   `update_custom_key_store`

### Usage

    kms_create_custom_key_store(CustomKeyStoreName, CloudHsmClusterId,
      TrustAnchorCertificate, KeyStorePassword, CustomKeyStoreType,
      XksProxyUriEndpoint, XksProxyUriPath, XksProxyVpcEndpointServiceName,
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
id="kms_create_custom_key_store_:_CustomKeyStoreName">CustomKeyStoreName</code></td>
<td><p>[required] Specifies a friendly name for the custom key store.
The name must be unique in your Amazon Web Services account and Region.
This parameter is required for all custom key stores.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_create_custom_key_store_:_CloudHsmClusterId">CloudHsmClusterId</code></td>
<td><p>Identifies the CloudHSM cluster for an CloudHSM key store. This
parameter is required for custom key stores with
<code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
<p>Enter the cluster ID of any active CloudHSM cluster that is not
already associated with a custom key store. To find the cluster ID, use
the <a
href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_create_custom_key_store_:_TrustAnchorCertificate">TrustAnchorCertificate</code></td>
<td><p>Specifies the certificate for an CloudHSM key store. This
parameter is required for custom key stores with a
<code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
<p>Enter the content of the trust anchor certificate for the CloudHSM
cluster. This is the content of the <code>customerCA.crt</code> file
that you created when you <a
href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html">initialized
the cluster</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_create_custom_key_store_:_KeyStorePassword">KeyStorePassword</code></td>
<td><p>Specifies the <code>kmsuser</code> password for an CloudHSM key
store. This parameter is required for custom key stores with a
<code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
<p>Enter the password of the <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/#concept-kmsuser"><code>kmsuser</code>
crypto user (CU) account</a> in the specified CloudHSM cluster. KMS logs
into the cluster as this user to manage key material on your behalf.</p>
<p>The password must be a string of 7 to 32 characters. Its value is
case sensitive.</p>
<p>This parameter tells KMS the <code>kmsuser</code> account password;
it does not change the password in the CloudHSM cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="kms_create_custom_key_store_:_CustomKeyStoreType">CustomKeyStoreType</code></td>
<td><p>Specifies the type of custom key store. The default value is
<code>AWS_CLOUDHSM</code>.</p>
<p>For a custom key store backed by an CloudHSM cluster, omit the
parameter or enter <code>AWS_CLOUDHSM</code>. For a custom key store
backed by an external key manager outside of Amazon Web Services, enter
<code>EXTERNAL_KEY_STORE</code>. You cannot change this property after
the key store is created.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_create_custom_key_store_:_XksProxyUriEndpoint">XksProxyUriEndpoint</code></td>
<td><p>Specifies the endpoint that KMS uses to send requests to the
external key store proxy (XKS proxy). This parameter is required for
custom key stores with a <code>CustomKeyStoreType</code> of
<code>EXTERNAL_KEY_STORE</code>.</p>
<p>The protocol must be HTTPS. KMS communicates on port 443. Do not
specify the port in the <code>XksProxyUriEndpoint</code> value.</p>
<p>For external key stores with <code>XksProxyConnectivity</code> value
of <code>VPC_ENDPOINT_SERVICE</code>, specify <code
style="white-space: pre;">⁠https://⁠</code> followed by the private DNS
name of the VPC endpoint service.</p>
<p>For external key stores with <code>PUBLIC_ENDPOINT</code>
connectivity, this endpoint must be reachable before you create the
custom key store. KMS connects to the external key store proxy while
creating the custom key store. For external key stores with
<code>VPC_ENDPOINT_SERVICE</code> connectivity, KMS connects when you
call the <code>connect_custom_key_store</code> operation.</p>
<p>The value of this parameter must begin with <code
style="white-space: pre;">⁠https://⁠</code>. The remainder can contain
upper and lower case letters (A-Z and a-z), numbers (0-9), dots
(<code>.</code>), and hyphens (<code>-</code>). Additional slashes
(<code>/</code> and <code style="white-space: pre;">⁠\⁠</code>) are not
permitted.</p>
<p><strong>Uniqueness requirements:</strong></p>
<ul>
<li><p>The combined <code>XksProxyUriEndpoint</code> and
<code>XksProxyUriPath</code> values must be unique in the Amazon Web
Services account and Region.</p></li>
<li><p>An external key store with <code>PUBLIC_ENDPOINT</code>
connectivity cannot use the same <code>XksProxyUriEndpoint</code> value
as an external key store with <code>VPC_ENDPOINT_SERVICE</code>
connectivity in the same Amazon Web Services Region.</p></li>
<li><p>Each external key store with <code>VPC_ENDPOINT_SERVICE</code>
connectivity must have its own private DNS name. The
<code>XksProxyUriEndpoint</code> value for external key stores with
<code>VPC_ENDPOINT_SERVICE</code> connectivity (private DNS name) must
be unique in the Amazon Web Services account and Region.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="kms_create_custom_key_store_:_XksProxyUriPath">XksProxyUriPath</code></td>
<td><p>Specifies the base path to the proxy APIs for this external key
store. To find this value, see the documentation for your external key
store proxy. This parameter is required for all custom key stores with a
<code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
<p>The value must start with <code>/</code> and must end with <code
style="white-space: pre;">⁠/kms/xks/v1⁠</code> where <code>v1</code>
represents the version of the KMS external key store proxy API. This
path can include an optional prefix between the required elements such
as <code style="white-space: pre;">⁠/prefix/kms/xks/v1⁠</code>.</p>
<p><strong>Uniqueness requirements:</strong></p>
<ul>
<li><p>The combined <code>XksProxyUriEndpoint</code> and
<code>XksProxyUriPath</code> values must be unique in the Amazon Web
Services account and Region.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="kms_create_custom_key_store_:_XksProxyVpcEndpointServiceName">XksProxyVpcEndpointServiceName</code></td>
<td><p>Specifies the name of the Amazon VPC endpoint service for
interface endpoints that is used to communicate with your external key
store proxy (XKS proxy). This parameter is required when the value of
<code>CustomKeyStoreType</code> is <code>EXTERNAL_KEY_STORE</code> and
the value of <code>XksProxyConnectivity</code> is
<code>VPC_ENDPOINT_SERVICE</code>.</p>
<p>The Amazon VPC endpoint service must <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements">fulfill
all requirements</a> for use with an external key store.</p>
<p><strong>Uniqueness requirements:</strong></p>
<ul>
<li><p>External key stores with <code>VPC_ENDPOINT_SERVICE</code>
connectivity can share an Amazon VPC, but each external key store must
have its own VPC endpoint service and private DNS name.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="kms_create_custom_key_store_:_XksProxyAuthenticationCredential">XksProxyAuthenticationCredential</code></td>
<td><p>Specifies an authentication credential for the external key store
proxy (XKS proxy). This parameter is required for all custom key stores
with a <code>CustomKeyStoreType</code> of
<code>EXTERNAL_KEY_STORE</code>.</p>
<p>The <code>XksProxyAuthenticationCredential</code> has two required
elements: <code>RawSecretAccessKey</code>, a secret key, and
<code>AccessKeyId</code>, a unique identifier for the
<code>RawSecretAccessKey</code>. For character requirements, see <a
href="https://docs.aws.amazon.com/kms/latest/APIReference/API_XksProxyAuthenticationCredentialType.html">XksProxyAuthenticationCredentialType</a>.</p>
<p>KMS uses this authentication credential to sign requests to the
external key store proxy on your behalf. This credential is unrelated to
Identity and Access Management (IAM) and Amazon Web Services
credentials.</p>
<p>This parameter doesn't set or change the authentication credentials
on the XKS proxy. It just tells KMS the credential that you established
on your external key store proxy. If you rotate your proxy
authentication credential, use the <code>update_custom_key_store</code>
operation to provide the new credential to KMS.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_create_custom_key_store_:_XksProxyConnectivity">XksProxyConnectivity</code></td>
<td><p>Indicates how KMS communicates with the external key store proxy.
This parameter is required for custom key stores with a
<code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
<p>If the external key store proxy uses a public endpoint, specify
<code>PUBLIC_ENDPOINT</code>. If the external key store proxy uses a
Amazon VPC endpoint service for communication with KMS, specify
<code>VPC_ENDPOINT_SERVICE</code>. For help making this choice, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/plan-xks-keystore.html#choose-xks-connectivity">Choosing
a connectivity option</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>An Amazon VPC endpoint service keeps your communication with KMS in a
private address space entirely within Amazon Web Services, but it
requires more configuration, including establishing a Amazon VPC with
multiple subnets, a VPC endpoint service, a network load balancer, and a
verified private DNS name. A public endpoint is simpler to set up, but
it might be slower and might not fulfill your security requirements. You
might consider testing with a public endpoint, and then establishing a
VPC endpoint service for production tasks. Note that this choice does
not determine the location of the external key store proxy. Even if you
choose a VPC endpoint service, the proxy can be hosted within the VPC or
outside of Amazon Web Services such as in your corporate data
center.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomKeyStoreId = "string"
    )

### Request syntax

    svc$create_custom_key_store(
      CustomKeyStoreName = "string",
      CloudHsmClusterId = "string",
      TrustAnchorCertificate = "string",
      KeyStorePassword = "string",
      CustomKeyStoreType = "AWS_CLOUDHSM"|"EXTERNAL_KEY_STORE",
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
    # This example creates a custom key store that is associated with an AWS
    # CloudHSM cluster.
    svc$create_custom_key_store(
      CloudHsmClusterId = "cluster-234abcdefABC",
      CustomKeyStoreName = "ExampleKeyStore",
      KeyStorePassword = "kmsPswd",
      TrustAnchorCertificate = "<certificate-goes-here>"
    )

    # This example creates an external key store that uses an Amazon VPC
    # endpoint service to communicate with AWS KMS.
    svc$create_custom_key_store(
      CustomKeyStoreName = "ExampleVPCEndpointKeyStore",
      CustomKeyStoreType = "EXTERNAL_KEY_STORE",
      XksProxyAuthenticationCredential = list(
        AccessKeyId = "ABCDE12345670EXAMPLE",
        RawSecretAccessKey = "DXjSUawnel2fr6SKC7G25CNxTyWKE5PF9XX6H/u9pSo="
      ),
      XksProxyConnectivity = "VPC_ENDPOINT_SERVICE",
      XksProxyUriEndpoint = "https://myproxy-private.xks.example.com",
      XksProxyUriPath = "/example-prefix/kms/xks/v1",
      XksProxyVpcEndpointServiceName = "com.amazonaws.vpce.us-east-1.vpce-svc-example1"
    )

    # This example creates an external key store with public endpoint
    # connectivity.
    svc$create_custom_key_store(
      CustomKeyStoreName = "ExamplePublicEndpointKeyStore",
      CustomKeyStoreType = "EXTERNAL_KEY_STORE",
      XksProxyAuthenticationCredential = list(
        AccessKeyId = "ABCDE12345670EXAMPLE",
        RawSecretAccessKey = "DXjSUawnel2fr6SKC7G25CNxTyWKE5PF9XX6H/u9pSo="
      ),
      XksProxyConnectivity = "PUBLIC_ENDPOINT",
      XksProxyUriEndpoint = "https://myproxy.xks.example.com",
      XksProxyUriPath = "/kms/xks/v1"
    )

    ## End(Not run)
