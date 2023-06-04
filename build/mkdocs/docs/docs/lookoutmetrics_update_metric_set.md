<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_update_metric_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a dataset

### Description

Updates a dataset.

### Usage

    lookoutmetrics_update_metric_set(MetricSetArn, MetricSetDescription,
      MetricList, Offset, TimestampColumn, DimensionList, MetricSetFrequency,
      MetricSource, DimensionFilterList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_update_metric_set_:_MetricSetArn">MetricSetArn</code></td>
<td><p>[required] The ARN of the dataset to update.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_metric_set_:_MetricSetDescription">MetricSetDescription</code></td>
<td><p>The dataset's description.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_metric_set_:_MetricList">MetricList</code></td>
<td><p>The metric list.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_metric_set_:_Offset">Offset</code></td>
<td><p>After an interval ends, the amount of seconds that the detector
waits before importing data. Offset is only supported for S3, Redshift,
Athena and datasources.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_metric_set_:_TimestampColumn">TimestampColumn</code></td>
<td><p>The timestamp column.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_metric_set_:_DimensionList">DimensionList</code></td>
<td><p>The dimension list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_metric_set_:_MetricSetFrequency">MetricSetFrequency</code></td>
<td><p>The dataset's interval.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_metric_set_:_MetricSource">MetricSource</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_metric_set_:_DimensionFilterList">DimensionFilterList</code></td>
<td><p>Describes a list of filters for choosing specific dimensions and
specific values. Each filter consists of the dimension and one of its
values that you want to include. When multiple dimensions or values are
specified, the dimensions are joined with an AND operation and the
values are joined with an OR operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricSetArn = "string"
    )

### Request syntax

    svc$update_metric_set(
      MetricSetArn = "string",
      MetricSetDescription = "string",
      MetricList = list(
        list(
          MetricName = "string",
          AggregationFunction = "AVG"|"SUM",
          Namespace = "string"
        )
      ),
      Offset = 123,
      TimestampColumn = list(
        ColumnName = "string",
        ColumnFormat = "string"
      ),
      DimensionList = list(
        "string"
      ),
      MetricSetFrequency = "P1D"|"PT1H"|"PT10M"|"PT5M",
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
