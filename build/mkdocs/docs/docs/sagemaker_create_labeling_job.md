<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_labeling_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a job that uses workers to label the data objects in your input dataset

### Description

Creates a job that uses workers to label the data objects in your input
dataset. You can use the labeled data to train machine learning models.

You can select your workforce from one of three providers:

-   A private workforce that you create. It can include employees,
    contractors, and outside experts. Use a private workforce when want
    the data to stay within your organization or when a specific set of
    skills is required.

-   One or more vendors that you select from the Amazon Web Services
    Marketplace. Vendors provide expertise in specific areas.

-   The Amazon Mechanical Turk workforce. This is the largest workforce,
    but it should only be used for public data or data that has been
    stripped of any personally identifiable information.

You can also use *automated data labeling* to reduce the number of data
objects that need to be labeled by a human. Automated data labeling uses
*active learning* to determine if a data object can be labeled by
machine or if it needs to be sent to a human worker. For more
information, see [Using Automated Data
Labeling](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html).

The data objects to be labeled are contained in an Amazon S3 bucket. You
create a *manifest file* that describes the location of each object. For
more information, see [Using Input and Output
Data](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html).

The output can be used as the manifest file for another labeling job or
as training data for your machine learning models.

You can use this operation to create a static labeling job or a
streaming labeling job. A static labeling job stops if all data objects
in the input manifest file identified in `ManifestS3Uri` have been
labeled. A streaming labeling job runs perpetually until it is manually
stopped, or remains idle for 10 days. You can send new data objects to
an active (`InProgress`) streaming labeling job in real time. To learn
how to create a static labeling job, see [Create a Labeling Job
(API)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html)
in the Amazon SageMaker Developer Guide. To learn how to create a
streaming labeling job, see [Create a Streaming Labeling
Job](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html).

### Usage

    sagemaker_create_labeling_job(LabelingJobName, LabelAttributeName,
      InputConfig, OutputConfig, RoleArn, LabelCategoryConfigS3Uri,
      StoppingConditions, LabelingJobAlgorithmsConfig, HumanTaskConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_labeling_job_:_LabelingJobName">LabelingJobName</code></td>
<td><p>[required] The name of the labeling job. This name is used to
identify the job in a list of labeling jobs. Labeling job names must be
unique within an Amazon Web Services account and region.
<code>LabelingJobName</code> is not case sensitive. For example,
Example-job and example-job are considered the same labeling job name by
Ground Truth.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_labeling_job_:_LabelAttributeName">LabelAttributeName</code></td>
<td><p>[required] The attribute name to use for the label in the output
manifest file. This is the key for the key/value pair formed with the
label that a worker assigns to the object. The
<code>LabelAttributeName</code> must meet the following
requirements.</p>
<ul>
<li><p>The name can't end with "-metadata".</p></li>
<li><p>If you are using one of the following <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html">built-in
task types</a>, the attribute name <em>must</em> end with "-ref". If the
task type you are using is not listed below, the attribute name <em>must
not</em> end with "-ref".</p>
<ul>
<li><p>Image semantic segmentation (<code
style="white-space: pre;">⁠SemanticSegmentation)⁠</code>, and adjustment
(<code>AdjustmentSemanticSegmentation</code>) and verification
(<code>VerificationSemanticSegmentation</code>) labeling jobs for this
task type.</p></li>
<li><p>Video frame object detection (<code>VideoObjectDetection</code>),
and adjustment and verification
(<code>AdjustmentVideoObjectDetection</code>) labeling jobs for this
task type.</p></li>
<li><p>Video frame object tracking (<code>VideoObjectTracking</code>),
and adjustment and verification
(<code>AdjustmentVideoObjectTracking</code>) labeling jobs for this task
type.</p></li>
<li><p>3D point cloud semantic segmentation (<code
style="white-space: pre;">⁠3DPointCloudSemanticSegmentation⁠</code>), and
adjustment and verification
(<code>Adjustment3DPointCloudSemanticSegmentation</code>) labeling jobs
for this task type.</p></li>
<li><p>3D point cloud object tracking (<code
style="white-space: pre;">⁠3DPointCloudObjectTracking⁠</code>), and
adjustment and verification
(<code>Adjustment3DPointCloudObjectTracking</code>) labeling jobs for
this task type.</p></li>
</ul></li>
</ul>
<p>If you are creating an adjustment or verification labeling job, you
must use a <em>different</em> <code>LabelAttributeName</code> than the
one used in the original labeling job. The original labeling job is the
Ground Truth labeling job that produced the labels that you want
verified or adjusted. To learn more about adjustment and verification
labeling jobs, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-verification-data.html">Verify
and Adjust Labels</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_labeling_job_:_InputConfig">InputConfig</code></td>
<td><p>[required] Input data for the labeling job, such as the Amazon S3
location of the data objects and the location of the manifest file that
describes the data objects.</p>
<p>You must specify at least one of the following:
<code>S3DataSource</code> or <code>SnsDataSource</code>.</p>
<ul>
<li><p>Use <code>SnsDataSource</code> to specify an SNS input topic for
a streaming labeling job. If you do not specify and SNS input topic ARN,
Ground Truth will create a one-time labeling job that stops after all
data objects in the input manifest file have been labeled.</p></li>
<li><p>Use <code>S3DataSource</code> to specify an input manifest file
for both streaming and one-time labeling jobs. Adding an
<code>S3DataSource</code> is optional if you use
<code>SnsDataSource</code> to create a streaming labeling job.</p></li>
</ul>
<p>If you use the Amazon Mechanical Turk workforce, your input data
should not include confidential information, personal information or
protected health information. Use <code>ContentClassifiers</code> to
specify that your data is free of personally identifiable information
and adult content.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_labeling_job_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] The location of the output data and the Amazon Web
Services Key Management Service key ID for the key used to encrypt the
output data, if any.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_labeling_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) that Amazon SageMaker
assumes to perform tasks on your behalf during data labeling. You must
grant this role the necessary permissions so that Amazon SageMaker can
successfully complete data labeling.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_labeling_job_:_LabelCategoryConfigS3Uri">LabelCategoryConfigS3Uri</code></td>
<td><p>The S3 URI of the file, referred to as a <em>label category
configuration file</em>, that defines the categories used to label the
data objects.</p>
<p>For 3D point cloud and video frame task types, you can add label
category attributes and frame attributes to your label category
configuration file. To learn how, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-label-cat-config-attributes.html">Create
a Labeling Category Configuration File for 3D Point Cloud Labeling
Jobs</a>.</p>
<p>For named entity recognition jobs, in addition to
<code>"labels"</code>, you must provide worker instructions in the label
category configuration file using the <code>"instructions"</code>
parameter: <code
style="white-space: pre;">⁠"instructions": {"shortInstruction":"&lt;h1&gt;Add header&lt;/h1&gt;&lt;p&gt;Add Instructions&lt;/p&gt;", "fullInstruction":"&lt;p&gt;Add additional instructions.&lt;/p&gt;"}⁠</code>.
For details and an example, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api">Create
a Named Entity Recognition Labeling Job (API)</a> .</p>
<p>For all other <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html">built-in
task types</a> and <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates.html">custom
tasks</a>, your label category configuration file must be a JSON file in
the following format. Identify the labels you want to use by replacing
<code>label_1</code>,
<code>label_2</code>,<code>...</code>,<code>label_n</code> with your
label categories.</p>
<p><code style="white-space: pre;">⁠\{ ⁠</code></p>
<p><code
style="white-space: pre;">⁠"document-version": "2018-11-28",⁠</code></p>
<p><code
style="white-space: pre;">⁠"labels": [{"label": "label_1"},{"label": "label_2"},...{"label": "label_n"}]⁠</code></p>
<p><code style="white-space: pre;">⁠\}⁠</code></p>
<p>Note the following about the label category configuration file:</p>
<ul>
<li><p>For image classification and text classification (single and
multi-label) you must specify at least two label categories. For all
other task types, the minimum number of label categories required is
one.</p></li>
<li><p>Each label category must be unique, you cannot specify duplicate
label categories.</p></li>
<li><p>If you create a 3D point cloud or video frame adjustment or
verification labeling job, you must include
<code>auditLabelAttributeName</code> in the label category
configuration. Use this parameter to enter the <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateLabelingJob.html#sagemaker-CreateLabelingJob-request-LabelAttributeName"><code>LabelAttributeName</code></a>
of the labeling job you want to adjust or verify annotations
of.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_labeling_job_:_StoppingConditions">StoppingConditions</code></td>
<td><p>A set of conditions for stopping the labeling job. If any of the
conditions are met, the job is automatically stopped. You can use these
conditions to control the cost of data labeling.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_labeling_job_:_LabelingJobAlgorithmsConfig">LabelingJobAlgorithmsConfig</code></td>
<td><p>Configures the information required to perform automated data
labeling.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_labeling_job_:_HumanTaskConfig">HumanTaskConfig</code></td>
<td><p>[required] Configures the labeling task and how it is presented
to workers; including, but not limited to price, keywords, and batch
size (task count).</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_labeling_job_:_Tags">Tags</code></td>
<td><p>An array of key/value pairs. For more information, see <a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using
Cost Allocation Tags</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelingJobArn = "string"
    )

### Request syntax

    svc$create_labeling_job(
      LabelingJobName = "string",
      LabelAttributeName = "string",
      InputConfig = list(
        DataSource = list(
          S3DataSource = list(
            ManifestS3Uri = "string"
          ),
          SnsDataSource = list(
            SnsTopicArn = "string"
          )
        ),
        DataAttributes = list(
          ContentClassifiers = list(
            "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
          )
        )
      ),
      OutputConfig = list(
        S3OutputPath = "string",
        KmsKeyId = "string",
        SnsTopicArn = "string"
      ),
      RoleArn = "string",
      LabelCategoryConfigS3Uri = "string",
      StoppingConditions = list(
        MaxHumanLabeledObjectCount = 123,
        MaxPercentageOfInputDatasetLabeled = 123
      ),
      LabelingJobAlgorithmsConfig = list(
        LabelingJobAlgorithmSpecificationArn = "string",
        InitialActiveLearningModelArn = "string",
        LabelingJobResourceConfig = list(
          VolumeKmsKeyId = "string",
          VpcConfig = list(
            SecurityGroupIds = list(
              "string"
            ),
            Subnets = list(
              "string"
            )
          )
        )
      ),
      HumanTaskConfig = list(
        WorkteamArn = "string",
        UiConfig = list(
          UiTemplateS3Uri = "string",
          HumanTaskUiArn = "string"
        ),
        PreHumanTaskLambdaArn = "string",
        TaskKeywords = list(
          "string"
        ),
        TaskTitle = "string",
        TaskDescription = "string",
        NumberOfHumanWorkersPerDataObject = 123,
        TaskTimeLimitInSeconds = 123,
        TaskAvailabilityLifetimeInSeconds = 123,
        MaxConcurrentTaskCount = 123,
        AnnotationConsolidationConfig = list(
          AnnotationConsolidationLambdaArn = "string"
        ),
        PublicWorkforceTaskPrice = list(
          AmountInUsd = list(
            Dollars = 123,
            Cents = 123,
            TenthFractionsOfACent = 123
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
