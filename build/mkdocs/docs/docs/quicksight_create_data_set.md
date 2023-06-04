<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_data_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a dataset

### Description

Creates a dataset. This operation doesn't support datasets that include
uploaded files as a source.

### Usage

    quicksight_create_data_set(AwsAccountId, DataSetId, Name,
      PhysicalTableMap, LogicalTableMap, ImportMode, ColumnGroups,
      FieldFolders, Permissions, RowLevelPermissionDataSet,
      RowLevelPermissionTagConfiguration, ColumnLevelPermissionRules, Tags,
      DataSetUsageConfiguration, DatasetParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_data_set_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_DataSetId">DataSetId</code></td>
<td><p>[required] An ID for the dataset that you want to create. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_create_data_set_:_Name">Name</code></td>
<td><p>[required] The display name for the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_PhysicalTableMap">PhysicalTableMap</code></td>
<td><p>[required] Declares the physical tables that are available in the
underlying data sources.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_set_:_LogicalTableMap">LogicalTableMap</code></td>
<td><p>Configures the combination and transformation of the data from
the physical tables.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_ImportMode">ImportMode</code></td>
<td><p>[required] Indicates whether you want to import the data into
SPICE.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_set_:_ColumnGroups">ColumnGroups</code></td>
<td><p>Groupings of columns that work together in certain Amazon
QuickSight features. Currently, only geospatial hierarchy is
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_FieldFolders">FieldFolders</code></td>
<td><p>The folder that contains fields and nested subfolders for your
dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_set_:_Permissions">Permissions</code></td>
<td><p>A list of resource permissions on the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_RowLevelPermissionDataSet">RowLevelPermissionDataSet</code></td>
<td><p>The row-level security configuration for the data that you want
to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_set_:_RowLevelPermissionTagConfiguration">RowLevelPermissionTagConfiguration</code></td>
<td><p>The configuration of tags on a dataset to set row-level security.
Row-level security tags are currently supported for anonymous embedding
only.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_ColumnLevelPermissionRules">ColumnLevelPermissionRules</code></td>
<td><p>A set of one or more definitions of a
<code>ColumnLevelPermissionRule</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_create_data_set_:_Tags">Tags</code></td>
<td><p>Contains a map of the key-value pairs for the resource tag or
tags assigned to the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_data_set_:_DataSetUsageConfiguration">DataSetUsageConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_data_set_:_DatasetParameters">DatasetParameters</code></td>
<td><p>The parameter declarations of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      DataSetId = "string",
      IngestionArn = "string",
      IngestionId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$create_data_set(
      AwsAccountId = "string",
      DataSetId = "string",
      Name = "string",
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
      ImportMode = "SPICE"|"DIRECT_QUERY",
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
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
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
    )
