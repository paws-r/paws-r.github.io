<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_key_signing_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a key-signing key (KSK)

### Description

Deletes a key-signing key (KSK). Before you can delete a KSK, you must
deactivate it. The KSK must be deactivated before you can delete it
regardless of whether the hosted zone is enabled for DNSSEC signing.

You can use `deactivate_key_signing_key` to deactivate the key before
you delete it.

Use `get_dnssec` to verify that the KSK is in an `INACTIVE` status.

### Usage

    route53_delete_key_signing_key(HostedZoneId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_delete_key_signing_key_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] A unique string used to identify a hosted
zone.</p></td>
</tr>
<tr class="even">
<td><code id="route53_delete_key_signing_key_:_Name">Name</code></td>
<td><p>[required] A string used to identify a key-signing key
(KSK).</p></td>
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

    svc$delete_key_signing_key(
      HostedZoneId = "string",
      Name = "string"
    )
