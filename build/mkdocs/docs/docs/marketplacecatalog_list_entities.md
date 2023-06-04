<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_list_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the list of entities of a given type

### Description

Provides the list of entities of a given type.

### Usage

    marketplacecatalog_list_entities(Catalog, EntityType, FilterList, Sort,
      NextToken, MaxResults, OwnershipType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_list_entities_:_Catalog">Catalog</code></td>
<td><p>[required] The catalog related to the request. Fixed value:
<code>AWSMarketplace</code></p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_list_entities_:_EntityType">EntityType</code></td>
<td><p>[required] The type of entities to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_list_entities_:_FilterList">FilterList</code></td>
<td><p>An array of filter objects. Each filter object contains two
attributes, <code>filterName</code> and
<code>filterValues</code>.</p></td>
</tr>
<tr class="even">
<td><code id="marketplacecatalog_list_entities_:_Sort">Sort</code></td>
<td><p>An object that contains two attributes, <code>SortBy</code> and
<code>SortOrder</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_list_entities_:_NextToken">NextToken</code></td>
<td><p>The value of the next token, if it exists. Null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_list_entities_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the upper limit of the elements on a single page. If a
value isn't provided, the default value is 20.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_list_entities_:_OwnershipType">OwnershipType</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntitySummaryList = list(
        list(
          Name = "string",
          EntityType = "string",
          EntityId = "string",
          EntityArn = "string",
          LastModifiedDate = "string",
          Visibility = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_entities(
      Catalog = "string",
      EntityType = "string",
      FilterList = list(
        list(
          Name = "string",
          ValueList = list(
            "string"
          )
        )
      ),
      Sort = list(
        SortBy = "string",
        SortOrder = "ASCENDING"|"DESCENDING"
      ),
      NextToken = "string",
      MaxResults = 123,
      OwnershipType = "SELF"|"SHARED"
    )
