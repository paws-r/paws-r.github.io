<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the definition of a specific DataBrew dataset

### Description

Returns the definition of a specific DataBrew dataset.

### Usage

    gluedatabrew_describe_dataset(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_describe_dataset_:_Name">Name</code></td>
<td><p>[required] The name of the dataset to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreatedBy = "string",
      CreateDate = as.POSIXct(
        "2015-01-01"
      ),
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
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = "string",
      Source = "S3"|"DATA-CATALOG"|"DATABASE",
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
      ),
      ResourceArn = "string"
    )

### Request syntax

    svc$describe_dataset(
      Name = "string"
    )
