<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_create_metric_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a dataset

### Description

Creates a dataset.

### Usage

    lookoutmetrics_create_metric_set(AnomalyDetectorArn, MetricSetName,
      MetricSetDescription, MetricList, Offset, TimestampColumn,
      DimensionList, MetricSetFrequency, MetricSource, Timezone, Tags,
      DimensionFilterList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_create_metric_set_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The ARN of the anomaly detector that will use the
dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_metric_set_:_MetricSetName">MetricSetName</code></td>
<td><p>[required] The name of the dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_metric_set_:_MetricSetDescription">MetricSetDescription</code></td>
<td><p>A description of the dataset you are creating.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_metric_set_:_MetricList">MetricList</code></td>
<td><p>[required] A list of metrics that the dataset will
contain.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_metric_set_:_Offset">Offset</code></td>
<td><p>After an interval ends, the amount of seconds that the detector
waits before importing data. Offset is only supported for S3, Redshift,
Athena and datasources.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_metric_set_:_TimestampColumn">TimestampColumn</code></td>
<td><p>Contains information about the column used for tracking time in
your source data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_metric_set_:_DimensionList">DimensionList</code></td>
<td><p>A list of the fields you want to treat as dimensions.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_metric_set_:_MetricSetFrequency">MetricSetFrequency</code></td>
<td><p>The frequency with which the source data will be analyzed for
anomalies.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_metric_set_:_MetricSource">MetricSource</code></td>
<td><p>[required] Contains information about how the source data should
be interpreted.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_metric_set_:_Timezone">Timezone</code></td>
<td><p>The time zone in which your source data was recorded.</p></td>
</tr>
<tr class="odd">
<td><code id="lookoutmetrics_create_metric_set_:_Tags">Tags</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>
to apply to the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_metric_set_:_DimensionFilterList">DimensionFilterList</code></td>
<td><p>A list of filters that specify which data is kept for anomaly
detection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricSetArn = "string"
    )

### Request syntax

    svc$create_metric_set(
      AnomalyDetectorArn = "string",
      MetricSetName = "string",
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
      Timezone = "string",
      Tags = list(
        "string"
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
