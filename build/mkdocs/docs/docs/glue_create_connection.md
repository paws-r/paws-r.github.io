<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connection definition in the Data Catalog

### Description

Creates a connection definition in the Data Catalog.

### Usage

    glue_create_connection(CatalogId, ConnectionInput, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_connection_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which to create the connection. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_connection_:_ConnectionInput">ConnectionInput</code></td>
<td><p>[required] A <code>ConnectionInput</code> object defining the
connection to create.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_connection_:_Tags">Tags</code></td>
<td><p>The tags you assign to the connection.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_connection(
      CatalogId = "string",
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
      ),
      Tags = list(
        "string"
      )
    )
