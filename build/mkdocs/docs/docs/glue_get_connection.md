<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a connection definition from the Data Catalog

### Description

Retrieves a connection definition from the Data Catalog.

### Usage

    glue_get_connection(CatalogId, Name, HidePassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_connection_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the connection resides. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_connection_:_Name">Name</code></td>
<td><p>[required] The name of the connection definition to
retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_connection_:_HidePassword">HidePassword</code></td>
<td><p>Allows you to retrieve the connection metadata without returning
the password. For instance, the Glue console uses this flag to retrieve
the connection, and does not display the password. Set this parameter
when the caller might not have permission to use the KMS key to decrypt
the password, but it does have permission to access the rest of the
connection properties.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connection = list(
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
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedBy = "string"
      )
    )

### Request syntax

    svc$get_connection(
      CatalogId = "string",
      Name = "string",
      HidePassword = TRUE|FALSE
    )
