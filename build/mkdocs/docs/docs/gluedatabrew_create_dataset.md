<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DataBrew dataset

### Description

Creates a new DataBrew dataset.

### Usage

    gluedatabrew_create_dataset(Name, Format, FormatOptions, Input,
      PathOptions, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_create_dataset_:_Name">Name</code></td>
<td><p>[required] The name of the dataset to be created. Valid
characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and
space.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_dataset_:_Format">Format</code></td>
<td><p>The file format of a dataset that is created from an Amazon S3
file or folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_dataset_:_FormatOptions">FormatOptions</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_dataset_:_Input">Input</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_dataset_:_PathOptions">PathOptions</code></td>
<td><p>A set of options that defines how DataBrew interprets an Amazon
S3 path of the dataset.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_dataset_:_Tags">Tags</code></td>
<td><p>Metadata tags to apply to this dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_dataset(
      Name = "string",
      Format = "CSV"|"JSON"|"PARQUET"|"EXCEL"|"ORC",
      FormatOptions = list(
        Json = list(
          MultiLine = TRUE|FALSE
        ),
        Excel = list(
          SheetNames = list(
            "string"
          ),
          SheetIndexes = list(
            123
          ),
          HeaderRow = TRUE|FALSE
        ),
        Csv = list(
          Delimiter = "string",
          HeaderRow = TRUE|FALSE
        )
      ),
      Input = list(
        S3InputDefinition = list(
          Bucket = "string",
          Key = "string",
          BucketOwner = "string"
        ),
        DataCatalogInputDefinition = list(
          CatalogId = "string",
          DatabaseName = "string",
          TableName = "string",
          TempDirectory = list(
            Bucket = "string",
            Key = "string",
            BucketOwner = "string"
          )
        ),
        DatabaseInputDefinition = list(
          GlueConnectionName = "string",
          DatabaseTableName = "string",
          TempDirectory = list(
            Bucket = "string",
            Key = "string",
            BucketOwner = "string"
          ),
          QueryString = "string"
        ),
        Metadata = list(
          SourceArn = "string"
        )
      ),
      PathOptions = list(
        LastModifiedDateCondition = list(
          Expression = "string",
          ValuesMap = list(
            "string"
          )
        ),
        FilesLimit = list(
          MaxFiles = 123,
          OrderedBy = "LAST_MODIFIED_DATE",
          Order = "DESCENDING"|"ASCENDING"
        ),
        Parameters = list(
          list(
            Name = "string",
            Type = "Datetime"|"Number"|"String",
            DatetimeOptions = list(
              Format = "string",
              TimezoneOffset = "string",
              LocaleCode = "string"
            ),
            CreateColumn = TRUE|FALSE,
            Filter = list(
              Expression = "string",
              ValuesMap = list(
                "string"
              )
            )
          )
        )
      ),
      Tags = list(
        "string"
      )
    )
