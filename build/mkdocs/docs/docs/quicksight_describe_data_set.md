<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_data_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a dataset

### Description

Describes a dataset. This operation doesn't support datasets that
include uploaded files as a source.

### Usage

    quicksight_describe_data_set(AwsAccountId, DataSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_data_set_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_data_set_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID for the dataset that you want to create. This
ID is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSet = list(
        Arn = "string",
        DataSetId = "string",
        Name = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        PhysicalTableMap = list(
          list(
            RelationalTable = list(
              DataSourceArn = "string",
              Catalog = "string",
              Schema = "string",
              Name = "string",
              InputColumns = list(
                list(
                  Name = "string",
                  Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"|"BIT"|"BOOLEAN"|"JSON"
                )
              )
            ),
            CustomSql = list(
              DataSourceArn = "string",
              Name = "string",
              SqlQuery = "string",
              Columns = list(
                list(
                  Name = "string",
                  Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"|"BIT"|"BOOLEAN"|"JSON"
                )
              )
            ),
            S3Source = list(
              DataSourceArn = "string",
              UploadSettings = list(
                Format = "CSV"|"TSV"|"CLF"|"ELF"|"XLSX"|"JSON",
                StartFromRow = 123,
                ContainsHeader = TRUE|FALSE,
                TextQualifier = "DOUBLE_QUOTE"|"SINGLE_QUOTE",
                Delimiter = "string"
              ),
              InputColumns = list(
                list(
                  Name = "string",
                  Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"|"BIT"|"BOOLEAN"|"JSON"
                )
              )
            )
          )
        ),
        LogicalTableMap = list(
          list(
            Alias = "string",
            DataTransforms = list(
              list(
                ProjectOperation = list(
                  ProjectedColumns = list(
                    "string"
                  )
                ),
                FilterOperation = list(
                  ConditionExpression = "string"
                ),
                CreateColumnsOperation = list(
                  Columns = list(
                    list(
                      ColumnName = "string",
                      ColumnId = "string",
                      Expression = "string"
                    )
                  )
                ),
                RenameColumnOperation = list(
                  ColumnName = "string",
                  NewColumnName = "string"
                ),
                CastColumnTypeOperation = list(
                  ColumnName = "string",
                  NewColumnType = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME",
                  Format = "string"
                ),
                TagColumnOperation = list(
                  ColumnName = "string",
                  Tags = list(
                    list(
                      ColumnGeographicRole = "COUNTRY"|"STATE"|"COUNTY"|"CITY"|"POSTCODE"|"LONGITUDE"|"LATITUDE",
                      ColumnDescription = list(
                        Text = "string"
                      )
                    )
                  )
                ),
                UntagColumnOperation = list(
                  ColumnName = "string",
                  TagNames = list(
                    "COLUMN_GEOGRAPHIC_ROLE"|"COLUMN_DESCRIPTION"
                  )
                ),
                OverrideDatasetParameterOperation = list(
                  ParameterName = "string",
                  NewParameterName = "string",
                  NewDefaultValues = list(
                    StringStaticValues = list(
                      "string"
                    ),
                    DecimalStaticValues = list(
                      123.0
                    ),
                    DateTimeStaticValues = list(
                      as.POSIXct(
                        "2015-01-01"
                      )
                    ),
                    IntegerStaticValues = list(
                      123
                    )
                  )
                )
              )
            ),
            Source = list(
              JoinInstruction = list(
                LeftOperand = "string",
                RightOperand = "string",
                LeftJoinKeyProperties = list(
                  UniqueKey = TRUE|FALSE
                ),
                RightJoinKeyProperties = list(
                  UniqueKey = TRUE|FALSE
                ),
                Type = "INNER"|"OUTER"|"LEFT"|"RIGHT",
                OnClause = "string"
              ),
              PhysicalTableId = "string",
              DataSetArn = "string"
            )
          )
        ),
        OutputColumns = list(
          list(
            Name = "string",
            Description = "string",
            Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"
          )
        ),
        ImportMode = "SPICE"|"DIRECT_QUERY",
        ConsumedSpiceCapacityInBytes = 123,
        ColumnGroups = list(
          list(
            GeoSpatialColumnGroup = list(
              Name = "string",
              CountryCode = "US",
              Columns = list(
                "string"
              )
            )
          )
        ),
        FieldFolders = list(
          list(
            description = "string",
            columns = list(
              "string"
            )
          )
        ),
        RowLevelPermissionDataSet = list(
          Namespace = "string",
          Arn = "string",
          PermissionPolicy = "GRANT_ACCESS"|"DENY_ACCESS",
          FormatVersion = "VERSION_1"|"VERSION_2",
          Status = "ENABLED"|"DISABLED"
        ),
        RowLevelPermissionTagConfiguration = list(
          Status = "ENABLED"|"DISABLED",
          TagRules = list(
            list(
              TagKey = "string",
              ColumnName = "string",
              TagMultiValueDelimiter = "string",
              MatchAllValue = "string"
            )
          ),
          TagRuleConfigurations = list(
            list(
              "string"
            )
          )
        ),
        ColumnLevelPermissionRules = list(
          list(
            Principals = list(
              "string"
            ),
            ColumnNames = list(
              "string"
            )
          )
        ),
        DataSetUsageConfiguration = list(
          DisableUseAsDirectQuerySource = TRUE|FALSE,
          DisableUseAsImportedSource = TRUE|FALSE
        ),
        DatasetParameters = list(
          list(
            StringDatasetParameter = list(
              Id = "string",
              Name = "string",
              ValueType = "MULTI_VALUED"|"SINGLE_VALUED",
              DefaultValues = list(
                StaticValues = list(
                  "string"
                )
              )
            ),
            DecimalDatasetParameter = list(
              Id = "string",
              Name = "string",
              ValueType = "MULTI_VALUED"|"SINGLE_VALUED",
              DefaultValues = list(
                StaticValues = list(
                  123.0
                )
              )
            ),
            IntegerDatasetParameter = list(
              Id = "string",
              Name = "string",
              ValueType = "MULTI_VALUED"|"SINGLE_VALUED",
              DefaultValues = list(
                StaticValues = list(
                  123
                )
              )
            ),
            DateTimeDatasetParameter = list(
              Id = "string",
              Name = "string",
              ValueType = "MULTI_VALUED"|"SINGLE_VALUED",
              TimeGranularity = "YEAR"|"QUARTER"|"MONTH"|"WEEK"|"DAY"|"HOUR"|"MINUTE"|"SECOND"|"MILLISECOND",
              DefaultValues = list(
                StaticValues = list(
                  as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            )
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_data_set(
      AwsAccountId = "string",
      DataSetId = "string"
    )
