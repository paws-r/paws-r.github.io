<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_describe_metric_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a dataset

### Description

Describes a dataset.

Amazon Lookout for Metrics API actions are eventually consistent. If you
do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.

### Usage

    lookoutmetrics_describe_metric_set(MetricSetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_describe_metric_set_:_MetricSetArn">MetricSetArn</code></td>
<td><p>[required] The ARN of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricSetArn = "string",
      AnomalyDetectorArn = "string",
      MetricSetName = "string",
      MetricSetDescription = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      Offset = 123,
      MetricList = list(
        list(
          MetricName = "string",
          AggregationFunction = "AVG"|"SUM",
          Namespace = "string"
        )
      ),
      TimestampColumn = list(
        ColumnName = "string",
        ColumnFormat = "string"
      ),
      DimensionList = list(
        "string"
      ),
      MetricSetFrequency = "P1D"|"PT1H"|"PT10M"|"PT5M",
      Timezone = "string",
      MetricSource = list(
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
        ),
        AppFlowConfig = list(
          RoleArn = "string",
          FlowName = "string"
        ),
        CloudWatchConfig = list(
          RoleArn = "string",
          BackTestConfiguration = list(
            RunBackTestMode = TRUE|FALSE
          )
        ),
        RDSSourceConfig = list(
          DBInstanceIdentifier = "string",
          DatabaseHost = "string",
          DatabasePort = 123,
          SecretManagerArn = "string",
          DatabaseName = "string",
          TableName = "string",
          RoleArn = "string",
          VpcConfiguration = list(
            SubnetIdList = list(
              "string"
            ),
            SecurityGroupIdList = list(
              "string"
            )
          )
        ),
        RedshiftSourceConfig = list(
          ClusterIdentifier = "string",
          DatabaseHost = "string",
          DatabasePort = 123,
          SecretManagerArn = "string",
          DatabaseName = "string",
          TableName = "string",
          RoleArn = "string",
          VpcConfiguration = list(
            SubnetIdList = list(
              "string"
            ),
            SecurityGroupIdList = list(
              "string"
            )
          )
        ),
        AthenaSourceConfig = list(
          RoleArn = "string",
          DatabaseName = "string",
          DataCatalog = "string",
          TableName = "string",
          WorkGroupName = "string",
          S3ResultsPath = "string",
          BackTestConfiguration = list(
            RunBackTestMode = TRUE|FALSE
          )
        )
      ),
      DimensionFilterList = list(
        list(
          Name = "string",
          FilterList = list(
            list(
              DimensionValue = "string",
              FilterOperation = "EQUALS"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_metric_set(
      MetricSetArn = "string"
    )
