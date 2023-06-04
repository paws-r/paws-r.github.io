<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a topic

### Description

Describes a topic.

### Usage

    quicksight_describe_topic(AwsAccountId, TopicId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_topic_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_describe_topic_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to describe. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      TopicId = "string",
      Topic = list(
        Name = "string",
        Description = "string",
        DataSets = list(
          list(
            DatasetArn = "string",
            DatasetName = "string",
            DatasetDescription = "string",
            DataAggregation = list(
              DatasetRowDateGranularity = "SECOND"|"MINUTE"|"HOUR"|"DAY"|"WEEK"|"MONTH"|"QUARTER"|"YEAR",
              DefaultDateColumnName = "string"
            ),
            Filters = list(
              list(
                FilterDescription = "string",
                FilterClass = "ENFORCED_VALUE_FILTER"|"CONDITIONAL_VALUE_FILTER"|"NAMED_VALUE_FILTER",
                FilterName = "string",
                FilterSynonyms = list(
                  "string"
                ),
                OperandFieldName = "string",
                FilterType = "CATEGORY_FILTER"|"NUMERIC_EQUALITY_FILTER"|"NUMERIC_RANGE_FILTER"|"DATE_RANGE_FILTER"|"RELATIVE_DATE_FILTER",
                CategoryFilter = list(
                  CategoryFilterFunction = "EXACT"|"CONTAINS",
                  CategoryFilterType = "CUSTOM_FILTER"|"CUSTOM_FILTER_LIST"|"FILTER_LIST",
                  Constant = list(
                    ConstantType = "SINGULAR"|"RANGE"|"COLLECTIVE",
                    SingularConstant = "string",
                    CollectiveConstant = list(
                      ValueList = list(
                        "string"
                      )
                    )
                  ),
                  Inverse = TRUE|FALSE
                ),
                NumericEqualityFilter = list(
                  Constant = list(
                    ConstantType = "SINGULAR"|"RANGE"|"COLLECTIVE",
                    SingularConstant = "string"
                  ),
                  Aggregation = "NO_AGGREGATION"|"SUM"|"AVERAGE"|"COUNT"|"DISTINCT_COUNT"|"MAX"|"MEDIAN"|"MIN"|"STDEV"|"STDEVP"|"VAR"|"VARP"
                ),
                NumericRangeFilter = list(
                  Inclusive = TRUE|FALSE,
                  Constant = list(
                    ConstantType = "SINGULAR"|"RANGE"|"COLLECTIVE",
                    RangeConstant = list(
                      Minimum = "string",
                      Maximum = "string"
                    )
                  ),
                  Aggregation = "NO_AGGREGATION"|"SUM"|"AVERAGE"|"COUNT"|"DISTINCT_COUNT"|"MAX"|"MEDIAN"|"MIN"|"STDEV"|"STDEVP"|"VAR"|"VARP"
                ),
                DateRangeFilter = list(
                  Inclusive = TRUE|FALSE,
                  Constant = list(
                    ConstantType = "SINGULAR"|"RANGE"|"COLLECTIVE",
                    RangeConstant = list(
                      Minimum = "string",
                      Maximum = "string"
                    )
                  )
                ),
                RelativeDateFilter = list(
                  TimeGranularity = "SECOND"|"MINUTE"|"HOUR"|"DAY"|"WEEK"|"MONTH"|"QUARTER"|"YEAR",
                  RelativeDateFilterFunction = "PREVIOUS"|"THIS"|"LAST"|"NEXT"|"NOW",
                  Constant = list(
                    ConstantType = "SINGULAR"|"RANGE"|"COLLECTIVE",
                    SingularConstant = "string"
                  )
                )
              )
            ),
            Columns = list(
              list(
                ColumnName = "string",
                ColumnFriendlyName = "string",
                ColumnDescription = "string",
                ColumnSynonyms = list(
                  "string"
                ),
                ColumnDataRole = "DIMENSION"|"MEASURE",
                Aggregation = "SUM"|"MAX"|"MIN"|"COUNT"|"DISTINCT_COUNT"|"AVERAGE",
                IsIncludedInTopic = TRUE|FALSE,
                DisableIndexing = TRUE|FALSE,
                ComparativeOrder = list(
                  UseOrdering = "GREATER_IS_BETTER"|"LESSER_IS_BETTER"|"SPECIFIED",
                  SpecifedOrder = list(
                    "string"
                  ),
                  TreatUndefinedSpecifiedValues = "LEAST"|"MOST"
                ),
                SemanticType = list(
                  TypeName = "string",
                  SubTypeName = "string",
                  TypeParameters = list(
                    "string"
                  ),
                  TruthyCellValue = "string",
                  TruthyCellValueSynonyms = list(
                    "string"
                  ),
                  FalseyCellValue = "string",
                  FalseyCellValueSynonyms = list(
                    "string"
                  )
                ),
                TimeGranularity = "SECOND"|"MINUTE"|"HOUR"|"DAY"|"WEEK"|"MONTH"|"QUARTER"|"YEAR",
                AllowedAggregations = list(
                  "COUNT"|"DISTINCT_COUNT"|"MIN"|"MAX"|"MEDIAN"|"SUM"|"AVERAGE"|"STDEV"|"STDEVP"|"VAR"|"VARP"|"PERCENTILE"
                ),
                NotAllowedAggregations = list(
                  "COUNT"|"DISTINCT_COUNT"|"MIN"|"MAX"|"MEDIAN"|"SUM"|"AVERAGE"|"STDEV"|"STDEVP"|"VAR"|"VARP"|"PERCENTILE"
                ),
                DefaultFormatting = list(
                  DisplayFormat = "AUTO"|"PERCENT"|"CURRENCY"|"NUMBER"|"DATE"|"STRING",
                  DisplayFormatOptions = list(
                    UseBlankCellFormat = TRUE|FALSE,
                    BlankCellFormat = "string",
                    DateFormat = "string",
                    DecimalSeparator = "COMMA"|"DOT",
                    GroupingSeparator = "string",
                    UseGrouping = TRUE|FALSE,
                    FractionDigits = 123,
                    Prefix = "string",
                    Suffix = "string",
                    UnitScaler = "NONE"|"AUTO"|"THOUSANDS"|"MILLIONS"|"BILLIONS"|"TRILLIONS",
                    NegativeFormat = list(
                      Prefix = "string",
                      Suffix = "string"
                    ),
                    CurrencySymbol = "string"
                  )
                ),
                NeverAggregateInFilter = TRUE|FALSE,
                CellValueSynonyms = list(
                  list(
                    CellValue = "string",
                    Synonyms = list(
                      "string"
                    )
                  )
                )
              )
            ),
            CalculatedFields = list(
              list(
                CalculatedFieldName = "string",
                CalculatedFieldDescription = "string",
                Expression = "string",
                CalculatedFieldSynonyms = list(
                  "string"
                ),
                IsIncludedInTopic = TRUE|FALSE,
                DisableIndexing = TRUE|FALSE,
                ColumnDataRole = "DIMENSION"|"MEASURE",
                TimeGranularity = "SECOND"|"MINUTE"|"HOUR"|"DAY"|"WEEK"|"MONTH"|"QUARTER"|"YEAR",
                DefaultFormatting = list(
                  DisplayFormat = "AUTO"|"PERCENT"|"CURRENCY"|"NUMBER"|"DATE"|"STRING",
                  DisplayFormatOptions = list(
                    UseBlankCellFormat = TRUE|FALSE,
                    BlankCellFormat = "string",
                    DateFormat = "string",
                    DecimalSeparator = "COMMA"|"DOT",
                    GroupingSeparator = "string",
                    UseGrouping = TRUE|FALSE,
                    FractionDigits = 123,
                    Prefix = "string",
                    Suffix = "string",
                    UnitScaler = "NONE"|"AUTO"|"THOUSANDS"|"MILLIONS"|"BILLIONS"|"TRILLIONS",
                    NegativeFormat = list(
                      Prefix = "string",
                      Suffix = "string"
                    ),
                    CurrencySymbol = "string"
                  )
                ),
                Aggregation = "SUM"|"MAX"|"MIN"|"COUNT"|"DISTINCT_COUNT"|"AVERAGE",
                ComparativeOrder = list(
                  UseOrdering = "GREATER_IS_BETTER"|"LESSER_IS_BETTER"|"SPECIFIED",
                  SpecifedOrder = list(
                    "string"
                  ),
                  TreatUndefinedSpecifiedValues = "LEAST"|"MOST"
                ),
                SemanticType = list(
                  TypeName = "string",
                  SubTypeName = "string",
                  TypeParameters = list(
                    "string"
                  ),
                  TruthyCellValue = "string",
                  TruthyCellValueSynonyms = list(
                    "string"
                  ),
                  FalseyCellValue = "string",
                  FalseyCellValueSynonyms = list(
                    "string"
                  )
                ),
                AllowedAggregations = list(
                  "COUNT"|"DISTINCT_COUNT"|"MIN"|"MAX"|"MEDIAN"|"SUM"|"AVERAGE"|"STDEV"|"STDEVP"|"VAR"|"VARP"|"PERCENTILE"
                ),
                NotAllowedAggregations = list(
                  "COUNT"|"DISTINCT_COUNT"|"MIN"|"MAX"|"MEDIAN"|"SUM"|"AVERAGE"|"STDEV"|"STDEVP"|"VAR"|"VARP"|"PERCENTILE"
                ),
                NeverAggregateInFilter = TRUE|FALSE,
                CellValueSynonyms = list(
                  list(
                    CellValue = "string",
                    Synonyms = list(
                      "string"
                    )
                  )
                )
              )
            ),
            NamedEntities = list(
              list(
                EntityName = "string",
                EntityDescription = "string",
                EntitySynonyms = list(
                  "string"
                ),
                SemanticEntityType = list(
                  TypeName = "string",
                  SubTypeName = "string",
                  TypeParameters = list(
                    "string"
                  )
                ),
                Definition = list(
                  list(
                    FieldName = "string",
                    PropertyName = "string",
                    PropertyRole = "PRIMARY"|"ID",
                    PropertyUsage = "INHERIT"|"DIMENSION"|"MEASURE",
                    Metric = list(
                      Aggregation = "SUM"|"MIN"|"MAX"|"COUNT"|"AVERAGE"|"DISTINCT_COUNT"|"STDEV"|"STDEVP"|"VAR"|"VARP"|"PERCENTILE"|"MEDIAN"|"CUSTOM",
                      AggregationFunctionParameters = list(
                        "string"
                      )
                    )
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

    svc$describe_topic(
      AwsAccountId = "string",
      TopicId = "string"
    )
