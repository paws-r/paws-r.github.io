<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_generate_mac</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a hash-based message authentication code (HMAC) for a message using an HMAC KMS key and a MAC algorithm that the key supports

### Description

Generates a hash-based message authentication code (HMAC) for a message
using an HMAC KMS key and a MAC algorithm that the key supports. HMAC
KMS keys and the HMAC algorithms that KMS uses conform to industry
standards defined in [RFC
2104](https://datatracker.ietf.org/doc/html/rfc2104).

You can use value that GenerateMac returns in the `verify_mac` operation
to demonstrate that the original message has not changed. Also, because
a secret key is used to create the hash, you can verify that the party
that generated the hash has the required secret key. You can also use
the raw result to implement HMAC-based algorithms such as key derivation
functions. This operation is part of KMS support for HMAC KMS keys. For
details, see [HMAC keys in
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
the *Key Management Service Developer Guide* .

Best practices recommend that you limit the time during which any
signing mechanism, including an HMAC, is effective. This deters an
attack where the actor uses a signed message to establish validity
repeatedly or long after the message is superseded. HMAC tags do not
include a timestamp, but you can include a timestamp in the token or
message to help you detect when its time to refresh the HMAC.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the `KeyId` parameter.

**Required permissions**:
[kms:GenerateMac](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `verify_mac`

### Usage

    kms_generate_mac(Message, KeyId, MacAlgorithm, GrantTokens)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_generate_mac_:_Message">Message</code></td>
<td><p>[required] The message to be hashed. Specify a message of up to
4,096 bytes.</p>
<p><code>generate_mac</code> and <code>verify_mac</code> do not provide
special handling for message digests. If you generate an HMAC for a hash
digest of a message, you must verify the HMAC of the same hash
digest.</p></td>
</tr>
<tr class="even">
<td><code id="kms_generate_mac_:_KeyId">KeyId</code></td>
<td><p>[required] The HMAC KMS key to use in the operation. The MAC
algorithm computes the HMAC for the message and the key as described in
<a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC
2104</a>.</p>
<p>To identify an HMAC KMS key, use the <code>describe_key</code>
operation and see the <code>KeySpec</code> field in the
response.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_generate_mac_:_MacAlgorithm">MacAlgorithm</code></td>
<td><p>[required] The MAC algorithm used in the operation.</p>
<p>The algorithm must be compatible with the HMAC KMS key that you
specify. To find the MAC algorithms that your HMAC KMS key supports, use
the <code>describe_key</code> operation and see the
<code>MacAlgorithms</code> field in the <code>describe_key</code>
response.</p></td>
</tr>
<tr class="even">
<td><code id="kms_generate_mac_:_GrantTokens">GrantTokens</code></td>
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
      Mac = raw,
      MacAlgorithm = "HMAC_SHA_224"|"HMAC_SHA_256"|"HMAC_SHA_384"|"HMAC_SHA_512",
      KeyId = "string"
    )

### Request syntax

    svc$generate_mac(
      Message = raw,
      KeyId = "string",
      MacAlgorithm = "HMAC_SHA_224"|"HMAC_SHA_256"|"HMAC_SHA_384"|"HMAC_SHA_512",
      GrantTokens = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example generates an HMAC for a message, an HMAC KMS key, and a MAC
    # algorithm. The algorithm must be supported by the specified HMAC KMS
    # key.
    svc$generate_mac(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      MacAlgorithm = "HMAC_SHA_384",
      Message = "Hello World"
    )

    ## End(Not run)
