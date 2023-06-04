<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_index_fields</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the index fields configured for the search domain

### Description

Gets information about the index fields configured for the search
domain. Can be limited to specific fields by name. By default, shows all
fields and includes any pending changes to the configuration. Set the
`Deployed` option to `true` to show the active configuration and exclude
pending changes. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html"
target="_blank">Getting Domain Information</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_index_fields(DomainName, FieldNames, Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_index_fields_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_index_fields_:_FieldNames">FieldNames</code></td>
<td><p>A list of the index fields you want to describe. If not
specified, information is returned for all configured index
fields.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudsearch_describe_index_fields_:_Deployed">Deployed</code></td>
<td><p>Whether to display the deployed configuration (<code>true</code>)
or include any pending changes (<code>false</code>). Defaults to
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexFields = list(
        list(
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
    )

### Request syntax

    svc$describe_index_fields(
      DomainName = "string",
      FieldNames = list(
        "string"
      ),
      Deployed = TRUE|FALSE
    )
