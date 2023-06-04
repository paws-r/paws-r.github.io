<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_get_sample_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a selection of sample records from an Amazon S3 datasource

### Description

Returns a selection of sample records from an Amazon S3 datasource.

### Usage

    lookoutmetrics_get_sample_data(S3SourceConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_get_sample_data_:_S3SourceConfig">S3SourceConfig</code></td>
<td><p>A datasource bucket in Amazon S3.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HeaderValues = list(
        "string"
      ),
      SampleRows = list(
        list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_sample_data(
      S3SourceConfig = list(
        RoleArn = "string",
        TemplatedPathList = list(
          "string"
        ),
        HistoricalDataPathList = list(
          "string"
        ),
        FileFormatDescriptor = list(
          CsvFormatDescriptor = list(
            FileCompression = "NONE"|"GZIP",
            Charset = "string",
            ContainsHeader = TRUE|FALSE,
            Delimiter = "string",
            HeaderList = list(
              "string"
            ),
            QuoteSymbol = "string"
          ),
          JsonFormatDescriptor = list(
            FileCompression = "NONE"|"GZIP",
            Charset = "string"
          )
        )
      )
    )
