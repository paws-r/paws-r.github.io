<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_column_statistics_for_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates table statistics of columns

### Description

Creates or updates table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is `update_table`.

### Usage

    glue_update_column_statistics_for_table(CatalogId, DatabaseName,
      TableName, ColumnStatisticsList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_update_column_statistics_for_table_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the partitions in question
reside. If none is supplied, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_column_statistics_for_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database where the partitions
reside.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_column_statistics_for_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the partitions' table.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_column_statistics_for_table_:_ColumnStatisticsList">ColumnStatisticsList</code></td>
<td><p>[required] A list of the column statistics.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          ColumnStatistics = list(
            ColumnName = "string",
            ColumnType = "string",
            AnalyzedTime = as.POSIXct(
              "2015-01-01"
            ),
            StatisticsData = list(
              Type = "BOOLEAN"|"DATE"|"DECIMAL"|"DOUBLE"|"LONG"|"STRING"|"BINARY",
              BooleanColumnStatisticsData = list(
                NumberOfTrues = 123,
                NumberOfFalses = 123,
                NumberOfNulls = 123
              ),
              DateColumnStatisticsData = list(
                MinimumValue = as.POSIXct(
                  "2015-01-01"
                ),
                MaximumValue = as.POSIXct(
                  "2015-01-01"
                ),
                NumberOfNulls = 123,
                NumberOfDistinctValues = 123
              ),
              DecimalColumnStatisticsData = list(
                MinimumValue = list(
                  UnscaledValue = raw,
                  Scale = 123
                ),
                MaximumValue = list(
                  UnscaledValue = raw,
                  Scale = 123
                ),
                NumberOfNulls = 123,
                NumberOfDistinctValues = 123
              ),
              DoubleColumnStatisticsData = list(
                MinimumValue = 123.0,
                MaximumValue = 123.0,
                NumberOfNulls = 123,
                NumberOfDistinctValues = 123
              ),
              LongColumnStatisticsData = list(
                MinimumValue = 123,
                MaximumValue = 123,
                NumberOfNulls = 123,
                NumberOfDistinctValues = 123
              ),
              StringColumnStatisticsData = list(
                MaximumLength = 123,
                AverageLength = 123.0,
                NumberOfNulls = 123,
                NumberOfDistinctValues = 123
              ),
              BinaryColumnStatisticsData = list(
                MaximumLength = 123,
                AverageLength = 123.0,
                NumberOfNulls = 123
              )
            )
          ),
          Error = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$update_column_statistics_for_table(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      ColumnStatisticsList = list(
        list(
          ColumnName = "string",
          ColumnType = "string",
          AnalyzedTime = as.POSIXct(
            "2015-01-01"
          ),
          StatisticsData = list(
            Type = "BOOLEAN"|"DATE"|"DECIMAL"|"DOUBLE"|"LONG"|"STRING"|"BINARY",
            BooleanColumnStatisticsData = list(
              NumberOfTrues = 123,
              NumberOfFalses = 123,
              NumberOfNulls = 123
            ),
            DateColumnStatisticsData = list(
              MinimumValue = as.POSIXct(
                "2015-01-01"
              ),
              MaximumValue = as.POSIXct(
                "2015-01-01"
              ),
              NumberOfNulls = 123,
              NumberOfDistinctValues = 123
            ),
            DecimalColumnStatisticsData = list(
              MinimumValue = list(
                UnscaledValue = raw,
                Scale = 123
              ),
              MaximumValue = list(
                UnscaledValue = raw,
                Scale = 123
              ),
              NumberOfNulls = 123,
              NumberOfDistinctValues = 123
            ),
            DoubleColumnStatisticsData = list(
              MinimumValue = 123.0,
              MaximumValue = 123.0,
              NumberOfNulls = 123,
              NumberOfDistinctValues = 123
            ),
            LongColumnStatisticsData = list(
              MinimumValue = 123,
              MaximumValue = 123,
              NumberOfNulls = 123,
              NumberOfDistinctValues = 123
            ),
            StringColumnStatisticsData = list(
              MaximumLength = 123,
              AverageLength = 123.0,
              NumberOfNulls = 123,
              NumberOfDistinctValues = 123
            ),
            BinaryColumnStatisticsData = list(
              MaximumLength = 123,
              AverageLength = 123.0,
              NumberOfNulls = 123
            )
          )
        )
      )
    )
