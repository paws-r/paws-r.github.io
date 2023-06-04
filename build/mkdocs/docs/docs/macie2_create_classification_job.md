<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_classification_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and defines the settings for a classification job

### Description

Creates and defines the settings for a classification job.

### Usage

    macie2_create_classification_job(allowListIds, clientToken,
      customDataIdentifierIds, description, initialRun, jobType,
      managedDataIdentifierIds, managedDataIdentifierSelector, name,
      s3JobDefinition, samplingPercentage, scheduleFrequency, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_create_classification_job_:_allowListIds">allowListIds</code></td>
<td><p>An array of unique identifiers, one for each allow list for the
job to use when it analyzes data.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_classification_job_:_clientToken">clientToken</code></td>
<td><p>[required] A unique, case-sensitive token that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_classification_job_:_customDataIdentifierIds">customDataIdentifierIds</code></td>
<td><p>An array of unique identifiers, one for each custom data
identifier for the job to use when it analyzes data. To use only managed
data identifiers, don't specify a value for this property and specify a
value other than NONE for the managedDataIdentifierSelector
property.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_classification_job_:_description">description</code></td>
<td><p>A custom description of the job. The description can contain as
many as 200 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_classification_job_:_initialRun">initialRun</code></td>
<td><p>For a recurring job, specifies whether to analyze all existing,
eligible objects immediately after the job is created (true). To analyze
only those objects that are created or changed after you create the job
and before the job's first scheduled run, set this value to false.</p>
<p>If you configure the job to run only once, don't specify a value for
this property.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_classification_job_:_jobType">jobType</code></td>
<td><p>[required] The schedule for running the job. Valid values
are:</p>
<ul>
<li><p>ONE_TIME - Run the job only once. If you specify this value,
don't specify a value for the scheduleFrequency property.</p></li>
<li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If
you specify this value, use the scheduleFrequency property to define the
recurrence pattern for the job.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_classification_job_:_managedDataIdentifierIds">managedDataIdentifierIds</code></td>
<td><p>An array of unique identifiers, one for each managed data
identifier for the job to include (use) or exclude (not use) when it
analyzes data. Inclusion or exclusion depends on the managed data
identifier selection type that you specify for the job
(managedDataIdentifierSelector).</p>
<p>To retrieve a list of valid values for this property, use the
ListManagedDataIdentifiers operation.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_classification_job_:_managedDataIdentifierSelector">managedDataIdentifierSelector</code></td>
<td><p>The selection type to apply when determining which managed data
identifiers the job uses to analyze data. Valid values are:</p>
<ul>
<li><p>ALL - Use all the managed data identifiers that Amazon Macie
provides. If you specify this value, don't specify any values for the
managedDataIdentifierIds property.</p></li>
<li><p>EXCLUDE - Use all the managed data identifiers that Macie
provides except the managed data identifiers specified by the
managedDataIdentifierIds property.</p></li>
<li><p>INCLUDE - Use only the managed data identifiers specified by the
managedDataIdentifierIds property.</p></li>
<li><p>NONE - Don't use any managed data identifiers. If you specify
this value, specify at least one custom data identifier for the job
(customDataIdentifierIds) and don't specify any values for the
managedDataIdentifierIds property.</p></li>
</ul>
<p>If you don't specify a value for this property, the job uses all
managed data identifiers. If you don't specify a value for this property
or you specify ALL or EXCLUDE for a recurring job, the job also uses new
managed data identifiers as they are released.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_create_classification_job_:_name">name</code></td>
<td><p>[required] A custom name for the job. The name can contain as
many as 500 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_classification_job_:_s3JobDefinition">s3JobDefinition</code></td>
<td><p>[required] The S3 buckets that contain the objects to analyze,
and the scope of that analysis.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_classification_job_:_samplingPercentage">samplingPercentage</code></td>
<td><p>The sampling depth, as a percentage, for the job to apply when
processing objects. This value determines the percentage of eligible
objects that the job analyzes. If this value is less than 100, Amazon
Macie selects the objects to analyze at random, up to the specified
percentage, and analyzes all the data in those objects.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_classification_job_:_scheduleFrequency">scheduleFrequency</code></td>
<td><p>The recurrence pattern for running the job. To run the job only
once, don't specify a value for this property and set the value for the
jobType property to ONE_TIME.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_create_classification_job_:_tags">tags</code></td>
<td><p>A map of key-value pairs that specifies the tags to associate
with the job.</p>
<p>A job can have a maximum of 50 tags. Each tag consists of a tag key
and an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobArn = "string",
      jobId = "string"
    )

### Request syntax

    svc$create_classification_job(
      allowListIds = list(
        "string"
      ),
      clientToken = "string",
      customDataIdentifierIds = list(
        "string"
      ),
      description = "string",
      initialRun = TRUE|FALSE,
      jobType = "ONE_TIME"|"SCHEDULED",
      managedDataIdentifierIds = list(
        "string"
      ),
      managedDataIdentifierSelector = "ALL"|"EXCLUDE"|"INCLUDE"|"NONE",
      name = "string",
      s3JobDefinition = list(
        bucketCriteria = list(
          excludes = list(
            and = list(
              list(
                simpleCriterion = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "ACCOUNT_ID"|"S3_BUCKET_NAME"|"S3_BUCKET_EFFECTIVE_PERMISSION"|"S3_BUCKET_SHARED_ACCESS",
                  values = list(
                    "string"
                  )
                ),
                tagCriterion = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  tagValues = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  )
                )
              )
            )
          ),
          includes = list(
            and = list(
              list(
                simpleCriterion = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "ACCOUNT_ID"|"S3_BUCKET_NAME"|"S3_BUCKET_EFFECTIVE_PERMISSION"|"S3_BUCKET_SHARED_ACCESS",
                  values = list(
                    "string"
                  )
                ),
                tagCriterion = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  tagValues = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  )
                )
              )
            )
          )
        ),
        bucketDefinitions = list(
          list(
            accountId = "string",
            buckets = list(
              "string"
            )
          )
        ),
        scoping = list(
          excludes = list(
            and = list(
              list(
                simpleScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "OBJECT_EXTENSION"|"OBJECT_LAST_MODIFIED_DATE"|"OBJECT_SIZE"|"OBJECT_KEY",
                  values = list(
                    "string"
                  )
                ),
                tagScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "string",
                  tagValues = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  ),
                  target = "S3_OBJECT"
                )
              )
            )
          ),
          includes = list(
            and = list(
              list(
                simpleScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "OBJECT_EXTENSION"|"OBJECT_LAST_MODIFIED_DATE"|"OBJECT_SIZE"|"OBJECT_KEY",
                  values = list(
                    "string"
                  )
                ),
                tagScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "string",
                  tagValues = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  ),
                  target = "S3_OBJECT"
                )
              )
            )
          )
        )
      ),
      samplingPercentage = 123,
      scheduleFrequency = list(
        dailySchedule = list(),
        monthlySchedule = list(
          dayOfMonth = 123
        ),
        weeklySchedule = list(
          dayOfWeek = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"
        )
      ),
      tags = list(
        "string"
      )
    )
