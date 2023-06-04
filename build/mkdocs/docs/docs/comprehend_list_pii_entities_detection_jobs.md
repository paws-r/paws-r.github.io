<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_pii_entities_detection_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the PII entity detection jobs that you have submitted

### Description

Gets a list of the PII entity detection jobs that you have submitted.

### Usage

    comprehend_list_pii_entities_detection_jobs(Filter, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_pii_entities_detection_jobs_:_Filter">Filter</code></td>
<td><p>Filters the jobs that are returned. You can filter jobs on their
name, status, or the date and time that they were submitted. You can
only set one filter at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_pii_entities_detection_jobs_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_pii_entities_detection_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PiiEntitiesDetectionJobPropertiesList = list(
        list(
          JobId = "string",
          JobArn = "string",
          JobName = "string",
          JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
          Message = "string",
          SubmitTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          InputDataConfig = list(
            S3Uri = "string",
            InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE",
            DocumentReaderConfig = list(
              DocumentReadAction = "TEXTRACT_DETECT_DOCUMENT_TEXT"|"TEXTRACT_ANALYZE_DOCUMENT",
              DocumentReadMode = "SERVICE_DEFAULT"|"FORCE_DOCUMENT_READ_ACTION",
              FeatureTypes = list(
                "TABLES"|"FORMS"
              )
            )
          ),
          OutputDataConfig = list(
            S3Uri = "string",
            KmsKeyId = "string"
          ),
          RedactionConfig = list(
            PiiEntityTypes = list(
              "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"DATE_TIME"|"PASSPORT_NUMBER"|"DRIVER_ID"|"URL"|"AGE"|"USERNAME"|"PASSWORD"|"AWS_ACCESS_KEY"|"AWS_SECRET_KEY"|"IP_ADDRESS"|"MAC_ADDRESS"|"ALL"|"LICENSE_PLATE"|"VEHICLE_IDENTIFICATION_NUMBER"|"UK_NATIONAL_INSURANCE_NUMBER"|"CA_SOCIAL_INSURANCE_NUMBER"|"US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"|"UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"|"IN_PERMANENT_ACCOUNT_NUMBER"|"IN_NREGA"|"INTERNATIONAL_BANK_ACCOUNT_NUMBER"|"SWIFT_CODE"|"UK_NATIONAL_HEALTH_SERVICE_NUMBER"|"CA_HEALTH_NUMBER"|"IN_AADHAAR"|"IN_VOTER_NUMBER"
            ),
            MaskMode = "MASK"|"REPLACE_WITH_PII_ENTITY_TYPE",
            MaskCharacter = "string"
          ),
          LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
          DataAccessRoleArn = "string",
          Mode = "ONLY_REDACTION"|"ONLY_OFFSETS"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pii_entities_detection_jobs(
      Filter = list(
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        SubmitTimeBefore = as.POSIXct(
          "2015-01-01"
        ),
        SubmitTimeAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
