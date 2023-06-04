<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_start_pii_entities_detection_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an asynchronous PII entity detection job for a collection of documents

### Description

Starts an asynchronous PII entity detection job for a collection of
documents.

### Usage

    comprehend_start_pii_entities_detection_job(InputDataConfig,
      OutputDataConfig, Mode, RedactionConfig, DataAccessRoleArn, JobName,
      LanguageCode, ClientRequestToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_start_pii_entities_detection_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] The input properties for a PII entities detection
job.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_pii_entities_detection_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Provides conﬁguration parameters for the output of PII
entity detection jobs.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_pii_entities_detection_job_:_Mode">Mode</code></td>
<td><p>[required] Specifies whether the output provides the locations
(offsets) of PII entities or a file in which PII entities are
redacted.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_pii_entities_detection_job_:_RedactionConfig">RedactionConfig</code></td>
<td><p>Provides configuration parameters for PII entity redaction.</p>
<p>This parameter is required if you set the <code>Mode</code> parameter
to <code>ONLY_REDACTION</code>. In that case, you must provide a
<code>RedactionConfig</code> definition that includes the
<code>PiiEntityTypes</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_pii_entities_detection_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants Amazon Comprehend read access to your input data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_pii_entities_detection_job_:_JobName">JobName</code></td>
<td><p>The identifier of the job.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_pii_entities_detection_job_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. Currently,
English is the only valid language.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_pii_entities_detection_job_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_pii_entities_detection_job_:_Tags">Tags</code></td>
<td><p>Tags to associate with the PII entities detection job. A tag is a
key-value pair that adds metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added to
a resource to indicate its use by the sales department.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobArn = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED"
    )

### Request syntax

    svc$start_pii_entities_detection_job(
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
      Mode = "ONLY_REDACTION"|"ONLY_OFFSETS",
      RedactionConfig = list(
        PiiEntityTypes = list(
          "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"DATE_TIME"|"PASSPORT_NUMBER"|"DRIVER_ID"|"URL"|"AGE"|"USERNAME"|"PASSWORD"|"AWS_ACCESS_KEY"|"AWS_SECRET_KEY"|"IP_ADDRESS"|"MAC_ADDRESS"|"ALL"|"LICENSE_PLATE"|"VEHICLE_IDENTIFICATION_NUMBER"|"UK_NATIONAL_INSURANCE_NUMBER"|"CA_SOCIAL_INSURANCE_NUMBER"|"US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"|"UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"|"IN_PERMANENT_ACCOUNT_NUMBER"|"IN_NREGA"|"INTERNATIONAL_BANK_ACCOUNT_NUMBER"|"SWIFT_CODE"|"UK_NATIONAL_HEALTH_SERVICE_NUMBER"|"CA_HEALTH_NUMBER"|"IN_AADHAAR"|"IN_VOTER_NUMBER"
        ),
        MaskMode = "MASK"|"REPLACE_WITH_PII_ENTITY_TYPE",
        MaskCharacter = "string"
      ),
      DataAccessRoleArn = "string",
      JobName = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
      ClientRequestToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
