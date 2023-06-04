<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_create_ip_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new IPSet, which is called a trusted IP list in the console user interface

### Description

Creates a new IPSet, which is called a trusted IP list in the console
user interface. An IPSet is a list of IP addresses that are trusted for
secure communication with Amazon Web Services infrastructure and
applications. GuardDuty doesn't generate findings for IP addresses that
are included in IPSets. Only users from the administrator account can
use this operation.

### Usage

    guardduty_create_ip_set(DetectorId, Name, Format, Location, Activate,
      ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_create_ip_set_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty account
that you want to create an IPSet for.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_create_ip_set_:_Name">Name</code></td>
<td><p>[required] The user-friendly name to identify the IPSet.</p>
<p>Allowed characters are alphanumeric, whitespace, dash (-), and
underscores (_).</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_create_ip_set_:_Format">Format</code></td>
<td><p>[required] The format of the file that contains the
IPSet.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_create_ip_set_:_Location">Location</code></td>
<td><p>[required] The URI of the file that contains the IPSet.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_create_ip_set_:_Activate">Activate</code></td>
<td><p>[required] A Boolean value that indicates whether GuardDuty is to
start using the uploaded IPSet.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_ip_set_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token for the create request.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_create_ip_set_:_Tags">Tags</code></td>
<td><p>The tags to be added to a new IP set resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpSetId = "string"
    )

### Request syntax

    svc$create_ip_set(
      DetectorId = "string",
      Name = "string",
      Format = "TXT"|"STIX"|"OTX_CSV"|"ALIEN_VAULT"|"PROOF_POINT"|"FIRE_EYE",
      Location = "string",
      Activate = TRUE|FALSE,
      ClientToken = "string",
      Tags = list(
        "string"
      )
    )
