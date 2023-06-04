<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_key_signing_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new key-signing key (KSK) associated with a hosted zone

### Description

Creates a new key-signing key (KSK) associated with a hosted zone. You
can only have two KSKs per hosted zone.

### Usage

    route53_create_key_signing_key(CallerReference, HostedZoneId,
      KeyManagementServiceArn, Name, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_create_key_signing_key_:_CallerReference">CallerReference</code></td>
<td><p>[required] A unique string that identifies the request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_key_signing_key_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The unique string (ID) used to identify a hosted
zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_key_signing_key_:_KeyManagementServiceArn">KeyManagementServiceArn</code></td>
<td><p>[required] The Amazon resource name (ARN) for a customer managed
key in Key Management Service (KMS). The
<code>KeyManagementServiceArn</code> must be unique for each key-signing
key (KSK) in a single hosted zone. To see an example of
<code>KeyManagementServiceArn</code> that grants the correct permissions
for DNSSEC, scroll down to <strong>Example</strong>.</p>
<p>You must configure the customer managed customer managed key as
follows:</p>
<p><strong>Status</strong></p>
<p>Enabled</p>
<p><strong>Key spec</strong></p>
<p>ECC_NIST_P256</p>
<p><strong>Key usage</strong></p>
<p>Sign and verify</p>
<p><strong>Key policy</strong></p>
<p>The key policy must give permission for the following actions:</p>
<ul>
<li><p>DescribeKey</p></li>
<li><p>GetPublicKey</p></li>
<li><p>Sign</p></li>
</ul>
<p>The key policy must also include the Amazon Route 53 service in the
principal for your account. Specify the following:</p>
<ul>
<li><p><code>"Service": "dnssec-route53.amazonaws.com"</code></p></li>
</ul>
<p>For more information about working with a customer managed key in
KMS, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">Key
Management Service concepts</a>.</p></td>
</tr>
<tr class="even">
<td><code id="route53_create_key_signing_key_:_Name">Name</code></td>
<td><p>[required] A string used to identify a key-signing key (KSK).
<code>Name</code> can include numbers, letters, and underscores (_).
<code>Name</code> must be unique for each key-signing key in the same
hosted zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_key_signing_key_:_Status">Status</code></td>
<td><p>[required] A string specifying the initial status of the
key-signing key (KSK). You can set the value to <code>ACTIVE</code> or
<code>INACTIVE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeInfo = list(
        Id = "string",
        Status = "PENDING"|"INSYNC",
        SubmittedAt = as.POSIXct(
          "2015-01-01"
        ),
        Comment = "string"
      ),
      KeySigningKey = list(
        Name = "string",
        KmsArn = "string",
        Flag = 123,
        SigningAlgorithmMnemonic = "string",
        SigningAlgorithmType = 123,
        DigestAlgorithmMnemonic = "string",
        DigestAlgorithmType = 123,
        KeyTag = 123,
        DigestValue = "string",
        PublicKey = "string",
        DSRecord = "string",
        DNSKEYRecord = "string",
        Status = "string",
        StatusMessage = "string",
        CreatedDate = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        )
      ),
      Location = "string"
    )

### Request syntax

    svc$create_key_signing_key(
      CallerReference = "string",
      HostedZoneId = "string",
      KeyManagementServiceArn = "string",
      Name = "string",
      Status = "string"
    )
