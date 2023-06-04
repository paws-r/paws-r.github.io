<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_generate_random</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a random byte string that is cryptographically secure

### Description

Returns a random byte string that is cryptographically secure.

You must use the `NumberOfBytes` parameter to specify the length of the
random byte string. There is no default value for string length.

By default, the random byte string is generated in KMS. To generate the
byte string in the CloudHSM cluster associated with an CloudHSM key
store, use the `CustomKeyStoreId` parameter.

`generate_random` also supports [Amazon Web Services Nitro
Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
`generate_random` for a Nitro enclave, use the [Amazon Web Services
Nitro Enclaves
SDK](https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the `Recipient` parameter to provide
the attestation document for the enclave. Instead of plaintext bytes,
the response includes the plaintext bytes encrypted under the public key
from the attestation document (`CiphertextForRecipient`).For information
about the interaction between KMS and Amazon Web Services Nitro
Enclaves, see [How Amazon Web Services Nitro Enclaves uses
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the *Key Management Service Developer Guide*.

For more information about entropy and random number generation, see
[Key Management Service Cryptographic
Details](https://docs.aws.amazon.com/kms/latest/cryptographic-details/).

**Cross-account use**: Not applicable. `generate_random` does not use
any account-specific resources, such as KMS keys.

**Required permissions**:
[kms:GenerateRandom](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

### Usage

    kms_generate_random(NumberOfBytes, CustomKeyStoreId, Recipient)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_generate_random_:_NumberOfBytes">NumberOfBytes</code></td>
<td><p>The length of the random byte string. This parameter is
required.</p></td>
</tr>
<tr class="even">
<td><code
id="kms_generate_random_:_CustomKeyStoreId">CustomKeyStoreId</code></td>
<td><p>Generates the random byte string in the CloudHSM cluster that is
associated with the specified CloudHSM key store. To find the ID of a
custom key store, use the <code>describe_custom_key_stores</code>
operation.</p>
<p>External key store IDs are not valid for this parameter. If you
specify the ID of an external key store, <code>generate_random</code>
throws an <code>UnsupportedOperationException</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_generate_random_:_Recipient">Recipient</code></td>
<td><p>A signed <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/#term-attestdoc">attestation
document</a> from an Amazon Web Services Nitro enclave and the
encryption algorithm to use with the enclave's public key. The only
valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>.</p>
<p>This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the <a
href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon
Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
<p>When you use this parameter, instead of returning plaintext bytes,
KMS encrypts the plaintext bytes under the public key in the attestation
document, and returns the resulting ciphertext in the
<code>CiphertextForRecipient</code> field in the response. This
ciphertext can be decrypted only with the private key in the enclave.
The <code>Plaintext</code> field in the response is null or empty.</p>
<p>For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How
Amazon Web Services Nitro Enclaves uses KMS</a> in the <em>Key
Management Service Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Plaintext = raw,
      CiphertextForRecipient = raw
    )

### Request syntax

    svc$generate_random(
      NumberOfBytes = 123,
      CustomKeyStoreId = "string",
      Recipient = list(
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256",
        AttestationDocument = raw
      )
    )

### Examples

    ## Not run: 
    # The following example generates 32 bytes of random data.
    svc$generate_random(
      NumberOfBytes = 32L
    )

    # The following example includes the Recipient parameter with a signed
    # attestation document from an AWS Nitro enclave. Instead of returning a
    # plaintext (unencrypted) byte string, GenerateRandom returns the byte
    # string encrypted by the public key from the enclave's attestation
    # document.
    svc$generate_random(
      NumberOfBytes = 1024L,
      Recipient = list(
        AttestationDocument = "<attestation document>",
        KeyEncryptionAlgorithm = "RSAES_OAEP_SHA_256"
      )
    )

    ## End(Not run)
