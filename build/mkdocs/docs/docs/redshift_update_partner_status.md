<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_update_partner_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status of a partner integration

### Description

Updates the status of a partner integration.

### Usage

    redshift_update_partner_status(AccountId, ClusterIdentifier,
      DatabaseName, PartnerName, Status, StatusMessage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_update_partner_status_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID that owns the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_update_partner_status_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The cluster identifier of the cluster whose partner
integration status is being updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_update_partner_status_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the database whose partner integration
status is being updated.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_update_partner_status_:_PartnerName">PartnerName</code></td>
<td><p>[required] The name of the partner whose integration status is
being updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_update_partner_status_:_Status">Status</code></td>
<td><p>[required] The value of the updated status.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_update_partner_status_:_StatusMessage">StatusMessage</code></td>
<td><p>The status message provided by the partner.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatabaseName = "string",
      PartnerName = "string"
    )

### Request syntax

    svc$update_partner_status(
      AccountId = "string",
      ClusterIdentifier = "string",
      DatabaseName = "string",
      PartnerName = "string",
      Status = "Active"|"Inactive"|"RuntimeFailure"|"ConnectionFailure",
      StatusMessage = "string"
    )
