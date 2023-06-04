<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_describe_entity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the metadata and content of the entity

### Description

Returns the metadata and content of the entity.

### Usage

    marketplacecatalog_describe_entity(Catalog, EntityId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_describe_entity_:_Catalog">Catalog</code></td>
<td><p>[required] Required. The catalog related to the request. Fixed
value: <code>AWSMarketplace</code></p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_describe_entity_:_EntityId">EntityId</code></td>
<td><p>[required] Required. The unique ID of the entity to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntityType = "string",
      EntityIdentifier = "string",
      EntityArn = "string",
      LastModifiedDate = "string",
      Details = "string"
    )

### Request syntax

    svc$describe_entity(
      Catalog = "string",
      EntityId = "string"
    )
