<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_verify_mac</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Verifies the hash-based message authentication code (HMAC) for a specified message, HMAC KMS key, and MAC algorithm

### Description

Verifies the hash-based message authentication code (HMAC) for a
specified message, HMAC KMS key, and MAC algorithm. To verify the HMAC,
`verify_mac` computes an HMAC using the message, HMAC KMS key, and MAC
algorithm that you specify, and compares the computed HMAC to the HMAC
that you specify. If the HMACs are identical, the verification succeeds;
otherwise, it fails. Verification indicates that the message hasn't
changed since the HMAC was calculated, and the specified key was used to
generate and verify the HMAC.

HMAC KMS keys and the HMAC algorithms that KMS uses conform to industry
standards defined in [RFC
2104](https://datatracker.ietf.org/doc/html/rfc2104).

This operation is part of KMS support for HMAC KMS keys. For details,
see [HMAC keys in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
the *Key Management Service Developer Guide*.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:VerifyMac](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `generate_mac`

### Usage

    kms_verify_mac(Message, KeyId, MacAlgorithm, Mac, GrantTokens)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_verify_mac_:_Message">Message</code></td>
<td><p>[required] The message that will be used in the verification.
Enter the same message that was used to generate the HMAC.</p>
<p><code>generate_mac</code> and <code>verify_mac</code> do not provide
special handling for message digests. If you generated an HMAC for a
hash digest of a message, you must verify the HMAC for the same hash
digest.</p></td>
</tr>
<tr class="even">
<td><code id="kms_verify_mac_:_KeyId">KeyId</code></td>
<td><p>[required] The KMS key that will be used in the verification.</p>
<p>Enter a key ID of the KMS key that was used to generate the HMAC. If
you identify a different KMS key, the <code>verify_mac</code> operation
fails.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_verify_mac_:_MacAlgorithm">MacAlgorithm</code></td>
<td><p>[required] The MAC algorithm that will be used in the
verification. Enter the same MAC algorithm that was used to compute the
HMAC. This algorithm must be supported by the HMAC KMS key identified by
the <code>KeyId</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code id="kms_verify_mac_:_Mac">Mac</code></td>
<td><p>[required] The HMAC to verify. Enter the HMAC that was generated
by the <code>generate_mac</code> operation when you specified the same
message, HMAC KMS key, and MAC algorithm as the values specified in this
request.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_verify_mac_:_GrantTokens">GrantTokens</code></td>
<td><p>A list of grant tokens.</p>
<p>Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved <em>eventual
consistency</em>. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant
token</a> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using
a grant token</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyId = "string",
      MacValid = TRUE|FALSE,
      MacAlgorithm = "HMAC_SHA_224"|"HMAC_SHA_256"|"HMAC_SHA_384"|"HMAC_SHA_512"
    )

### Request syntax

    svc$verify_mac(
      Message = raw,
      KeyId = "string",
      MacAlgorithm = "HMAC_SHA_224"|"HMAC_SHA_256"|"HMAC_SHA_384"|"HMAC_SHA_512",
      Mac = raw,
      GrantTokens = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example verifies an HMAC for a particular message, HMAC KMS keys,
    # and MAC algorithm. A value of 'true' in the MacValid value in the
    # response indicates that the HMAC is valid.
    svc$verify_mac(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      Mac = "<HMAC_TAG>",
      MacAlgorithm = "HMAC_SHA_384",
      Message = "Hello World"
    )

    ## End(Not run)
