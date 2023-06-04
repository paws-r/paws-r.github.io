<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_delete_index_field</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an IndexField from the search domain

### Description

Removes an `IndexField` from the search domain. For more information,
see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html"
target="_blank">Configuring Index Fields</a> in the *Amazon CloudSearch
Developer Guide*.

### Usage

    cloudsearch_delete_index_field(DomainName, IndexFieldName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_delete_index_field_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_delete_index_field_:_IndexFieldName">IndexFieldName</code></td>
<td><p>[required] The name of the index field your want to remove from
the domain's indexing options.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexField = list(
        Options = list(
          IndexFieldName = "string",
          IndexFieldType = "int"|"double"|"literal"|"text"|"date"|"latlon"|"int-array"|"double-array"|"literal-array"|"text-array"|"date-array",
          IntOptions = list(
            DefaultValue = 123,
            SourceField = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE,
            SortEnabled = TRUE|FALSE
          ),
          DoubleOptions = list(
            DefaultValue = 123.0,
            SourceField = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE,
            SortEnabled = TRUE|FALSE
          ),
          LiteralOptions = list(
            DefaultValue = "string",
            SourceField = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE,
            SortEnabled = TRUE|FALSE
          ),
          TextOptions = list(
            DefaultValue = "string",
            SourceField = "string",
            ReturnEnabled = TRUE|FALSE,
            SortEnabled = TRUE|FALSE,
            HighlightEnabled = TRUE|FALSE,
            AnalysisScheme = "string"
          ),
          DateOptions = list(
            DefaultValue = "string",
            SourceField = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE,
            SortEnabled = TRUE|FALSE
          ),
          LatLonOptions = list(
            DefaultValue = "string",
            SourceField = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE,
            SortEnabled = TRUE|FALSE
          ),
          IntArrayOptions = list(
            DefaultValue = 123,
            SourceFields = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE
          ),
          DoubleArrayOptions = list(
            DefaultValue = 123.0,
            SourceFields = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE
          ),
          LiteralArrayOptions = list(
            DefaultValue = "string",
            SourceFields = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE
          ),
          TextArrayOptions = list(
            DefaultValue = "string",
            SourceFields = "string",
            ReturnEnabled = TRUE|FALSE,
            HighlightEnabled = TRUE|FALSE,
            AnalysisScheme = "string"
          ),
          DateArrayOptions = list(
            DefaultValue = "string",
            SourceFields = "string",
            FacetEnabled = TRUE|FALSE,
            SearchEnabled = TRUE|FALSE,
            ReturnEnabled = TRUE|FALSE
          )
        ),
        Status = list(
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateVersion = 123,
          State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
          PendingDeletion = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$delete_index_field(
      DomainName = "string",
      IndexFieldName = "string"
    )
