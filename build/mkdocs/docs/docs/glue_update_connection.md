<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a connection definition in the Data Catalog

### Description

Updates a connection definition in the Data Catalog.

### Usage

    glue_update_connection(CatalogId, Name, ConnectionInput)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_connection_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the connection resides. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_connection_:_Name">Name</code></td>
<td><p>[required] The name of the connection definition to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_connection_:_ConnectionInput">ConnectionInput</code></td>
<td><p>[required] A <code>ConnectionInput</code> object that redefines
the connection in question.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_connection(
      CatalogId = "string",
      Name = "string",
      ConnectionInput = list(
        Name = "string",
        Description = "string",
        ConnectionType = "JDBC"|"SFTP"|"MONGODB"|"KAFKA"|"NETWORK"|"MARKETPLACE"|"CUSTOM",
        MatchCriteria = list(
          "string"
        ),
        ConnectionProperties = list(
          "string"
        ),
        PhysicalConnectionRequirements = list(
          SubnetId = "string",
          SecurityGroupIdList = list(
            "string"
          ),
          AvailabilityZone = "string"
        )
      )
    )
