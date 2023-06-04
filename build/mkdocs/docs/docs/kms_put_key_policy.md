<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_put_key_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a key policy to the specified KMS key

### Description

Attaches a key policy to the specified KMS key.

For more information about key policies, see [Key
Policies](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the *Key Management Service Developer Guide*. For help writing and
formatting a JSON policy document, see the [IAM JSON Policy
Reference](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
in the *Identity and Access Management User Guide* . For examples of
adding a key policy in multiple programming languages, see [Setting a
key
policy](https://docs.aws.amazon.com/kms/latest/developerguide/programming-key-policies.html#put-policy)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:PutKeyPolicy](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations**: `get_key_policy`

### Usage

    kms_put_key_policy(KeyId, PolicyName, Policy,
      BypassPolicyLockoutSafetyCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_put_key_policy_:_KeyId">KeyId</code></td>
<td><p>[required] Sets the key policy on the specified KMS key.</p>
<p>Specify the key ID or key ARN of the KMS key.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p></td>
</tr>
<tr class="even">
<td><code id="kms_put_key_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the key policy. The only valid value is
<code>default</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_put_key_policy_:_Policy">Policy</code></td>
<td><p>[required] The key policy to attach to the KMS key.</p>
<p>The key policy must meet the following criteria:</p>
<ul>
<li><p>The key policy must allow the calling principal to make a
subsequent <code>put_key_policy</code> request on the KMS key. This
reduces the risk that the KMS key becomes unmanageable. For more
information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default
key policy</a> in the <em>Key Management Service Developer Guide</em>.
(To omit this condition, set <code>BypassPolicyLockoutSafetyCheck</code>
to true.)</p></li>
<li><p>Each statement in the key policy must contain one or more
principals. The principals in the key policy must exist and be visible
to KMS. When you create a new Amazon Web Services principal, you might
need to enforce a delay before including the new principal in a key
policy because the new principal might not be immediately visible to
KMS. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes
that I make are not always immediately visible</a> in the <em>Amazon Web
Services Identity and Access Management User Guide</em>.</p></li>
</ul>
<p>A key policy document can include only the following characters:</p>
<ul>
<li><p>Printable ASCII characters from the space character
(<code>U+0020</code>) through the end of the ASCII character
range.</p></li>
<li><p>Printable characters in the Basic Latin and Latin-1 Supplement
character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>).</p></li>
<li><p>The tab (<code>U+0009</code>), line feed (<code
style="white-space: pre;">⁠U+000A⁠</code>), and carriage return (<code
style="white-space: pre;">⁠U+000D⁠</code>) special characters</p></li>
</ul>
<p>For information about key policies, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key
policies in KMS</a> in the <em>Key Management Service Developer
Guide</em>.For help writing and formatting a JSON policy document, see
the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM
JSON Policy Reference</a> in the <em>Identity and Access Management User
Guide</em> .</p></td>
</tr>
<tr class="even">
<td><code
id="kms_put_key_policy_:_BypassPolicyLockoutSafetyCheck">BypassPolicyLockoutSafetyCheck</code></td>
<td><p>Skips ("bypasses") the key policy lockout safety check. The
default value is false.</p>
<p>Setting this value to true increases the risk that the KMS key
becomes unmanageable. Do not set this value to true
indiscriminately.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default
key policy</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>Use this parameter only when you intend to prevent the principal that
is making the request from making a subsequent
<code>put_key_policy</code> request on the KMS key.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_key_policy(
      KeyId = "string",
      PolicyName = "string",
      Policy = "string",
      BypassPolicyLockoutSafetyCheck = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example attaches a key policy to the specified KMS key.
    svc$put_key_policy(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
      Policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Id\": \"custom-policy-2016-...",
      PolicyName = "default"
    )

    ## End(Not run)
