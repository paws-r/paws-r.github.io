<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_dnssec</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DNSSEC for a specific hosted zone, including the key-signing keys (KSKs) in the hosted zone

### Description

Returns information about DNSSEC for a specific hosted zone, including
the key-signing keys (KSKs) in the hosted zone.

### Usage

    route53_get_dnssec(HostedZoneId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_get_dnssec_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] A unique string used to identify a hosted
zone.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = list(
        ServeSignature = "string",
        StatusMessage = "string"
      ),
      KeySigningKeys = list(
        list(
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
        )
      )
    )

### Request syntax

    svc$get_dnssec(
      HostedZoneId = "string"
    )
