<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_activate_key_signing_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC

### Description

Activates a key-signing key (KSK) so that it can be used for signing by
DNSSEC. This operation changes the KSK status to `ACTIVE`.

### Usage

    route53_activate_key_signing_key(HostedZoneId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_activate_key_signing_key_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] A unique string used to identify a hosted
zone.</p></td>
</tr>
<tr class="even">
<td><code id="route53_activate_key_signing_key_:_Name">Name</code></td>
<td><p>[required] A string used to identify a key-signing key (KSK).
<code>Name</code> can include numbers, letters, and underscores (_).
<code>Name</code> must be unique for each key-signing key in the same
hosted zone.</p></td>
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
      )
    )

### Request syntax

    svc$activate_key_signing_key(
      HostedZoneId = "string",
      Name = "string"
    )
