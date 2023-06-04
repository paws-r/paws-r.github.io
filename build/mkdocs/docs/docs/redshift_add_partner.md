<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_add_partner</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a partner integration to a cluster

### Description

Adds a partner integration to a cluster. This operation authorizes a
partner to push status updates for the specified database. To complete
the integration, you also set up the integration on the partner website.

### Usage

    redshift_add_partner(AccountId, ClusterIdentifier, DatabaseName,
      PartnerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="redshift_add_partner_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID that owns the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_add_partner_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The cluster identifier of the cluster that receives
data from the partner.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_add_partner_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the database that receives data from the
partner.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_add_partner_:_PartnerName">PartnerName</code></td>
<td><p>[required] The name of the partner that is authorized to send
data.</p></td>
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

    svc$add_partner(
      AccountId = "string",
      ClusterIdentifier = "string",
      DatabaseName = "string",
      PartnerName = "string"
    )
