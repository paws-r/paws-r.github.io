<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_update_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the properties of a domain, including creating or selecting a dead letter queue or an encryption key

### Description

Updates the properties of a domain, including creating or selecting a
dead letter queue or an encryption key.

After a domain is created, the name can’t be changed.

Use this API or `create_domain` to enable [identity
resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
set `Matching` to true.

To prevent cross-service impersonation when you call this API, see
[Cross-service confused deputy
prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
for sample policies that you should apply.

To add or remove tags on an existing Domain, see
`tag_resource`/`untag_resource`.

### Usage

    customerprofiles_update_domain(DomainName, DefaultExpirationDays,
      DefaultEncryptionKey, DeadLetterQueueUrl, Matching, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_update_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_update_domain_:_DefaultExpirationDays">DefaultExpirationDays</code></td>
<td><p>The default number of days until the data within the domain
expires.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_update_domain_:_DefaultEncryptionKey">DefaultEncryptionKey</code></td>
<td><p>The default encryption key, which is an AWS managed key, is used
when no specific type of encryption key is specified. It is used to
encrypt all data before it is placed in permanent or semi-permanent
storage. If specified as an empty string, it will clear any existing
value.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_update_domain_:_DeadLetterQueueUrl">DeadLetterQueueUrl</code></td>
<td><p>The URL of the SQS dead letter queue, which is used for reporting
errors associated with ingesting data from third party applications. If
specified as an empty string, it will clear any existing value. You must
set up a policy on the DeadLetterQueue for the SendMessage operation to
enable Amazon Connect Customer Profiles to send messages to the
DeadLetterQueue.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_update_domain_:_Matching">Matching</code></td>
<td><p>The process of matching duplicate profiles. If
<code>Matching</code> = <code>true</code>, Amazon Connect Customer
Profiles starts a weekly batch process called Identity Resolution Job.
If you do not specify a date and time for Identity Resolution Job to
run, by default it runs every Saturday at 12AM UTC to detect duplicate
profiles in your domains.</p>
<p>After the Identity Resolution Job completes, use the
<code>get_matches</code> API to return and review the results. Or, if
you have configured <code>ExportingConfig</code> in the
<code>MatchingRequest</code>, you can download the results from
S3.</p></td>
</tr>
<tr class="even">
<td><code id="customerprofiles_update_domain_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      DefaultExpirationDays = 123,
      DefaultEncryptionKey = "string",
      DeadLetterQueueUrl = "string",
      Matching = list(
        Enabled = TRUE|FALSE,
        JobSchedule = list(
          DayOfTheWeek = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY",
          Time = "string"
        ),
        AutoMerging = list(
          Enabled = TRUE|FALSE,
          Consolidation = list(
            MatchingAttributesList = list(
              list(
                "string"
              )
            )
          ),
          ConflictResolution = list(
            ConflictResolvingModel = "RECENCY"|"SOURCE",
            SourceName = "string"
          ),
          MinAllowedConfidenceScoreForMerging = 123.0
        ),
        ExportingConfig = list(
          S3Exporting = list(
            S3BucketName = "string",
            S3KeyName = "string"
          )
        )
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_domain(
      DomainName = "string",
      DefaultExpirationDays = 123,
      DefaultEncryptionKey = "string",
      DeadLetterQueueUrl = "string",
      Matching = list(
        Enabled = TRUE|FALSE,
        JobSchedule = list(
          DayOfTheWeek = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY",
          Time = "string"
        ),
        AutoMerging = list(
          Enabled = TRUE|FALSE,
          Consolidation = list(
            MatchingAttributesList = list(
              list(
                "string"
              )
            )
          ),
          ConflictResolution = list(
            ConflictResolvingModel = "RECENCY"|"SOURCE",
            SourceName = "string"
          ),
          MinAllowedConfidenceScoreForMerging = 123.0
        ),
        ExportingConfig = list(
          S3Exporting = list(
            S3BucketName = "string",
            S3KeyName = "string"
          )
        )
      ),
      Tags = list(
        "string"
      )
    )
