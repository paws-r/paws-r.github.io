<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_compilation_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a model compilation job

### Description

Starts a model compilation job. After the model has been compiled,
Amazon SageMaker saves the resulting model artifacts to an Amazon Simple
Storage Service (Amazon S3) bucket that you specify.

If you choose to host your model using Amazon SageMaker hosting
services, you can use the resulting model artifacts as part of the
model. You can also use the artifacts with Amazon Web Services IoT
Greengrass. In that case, deploy them as an ML resource.

In the request body, you provide the following:

-   A name for the compilation job

-   Information about the input model artifacts

-   The output location for the compiled model and the device (target)
    that the model runs on

-   The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
    assumes to perform the model compilation job.

You can also provide a `Tag` to track the model compilation job's
resource use and costs. The response body contains the
`CompilationJobArn` for the compiled job.

To stop a model compilation job, use `stop_compilation_job`. To get
information about a particular model compilation job, use
`describe_compilation_job`. To get information about multiple model
compilation jobs, use `list_compilation_jobs`.

### Usage

    sagemaker_create_compilation_job(CompilationJobName, RoleArn,
      ModelPackageVersionArn, InputConfig, OutputConfig, VpcConfig,
      StoppingCondition, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_compilation_job_:_CompilationJobName">CompilationJobName</code></td>
<td><p>[required] A name for the model compilation job. The name must be
unique within the Amazon Web Services Region and within your Amazon Web
Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_compilation_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
enables Amazon SageMaker to perform tasks on your behalf.</p>
<p>During model compilation, Amazon SageMaker needs your permission
to:</p>
<ul>
<li><p>Read input data from an S3 bucket</p></li>
<li><p>Write model artifacts to an S3 bucket</p></li>
<li><p>Write logs to Amazon CloudWatch Logs</p></li>
<li><p>Publish metrics to Amazon CloudWatch</p></li>
</ul>
<p>You grant permissions for all of these tasks to an IAM role. To pass
this role to Amazon SageMaker, the caller of this API must have the
<code>iam:PassRole</code> permission. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">Amazon
SageMaker Roles.</a></p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_compilation_job_:_ModelPackageVersionArn">ModelPackageVersionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a versioned model package.
Provide either a <code>ModelPackageVersionArn</code> or an
<code>InputConfig</code> object in the request syntax. The presence of
both objects in the <code>create_compilation_job</code> request will
return an exception.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_compilation_job_:_InputConfig">InputConfig</code></td>
<td><p>Provides information about the location of input model artifacts,
the name and shape of the expected data inputs, and the framework in
which the model was trained.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_compilation_job_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] Provides information about the output location for the
compiled model and the target device the model runs on.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_compilation_job_:_VpcConfig">VpcConfig</code></td>
<td><p>A <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html">VpcConfig</a>
object that specifies the VPC that you want your compilation job to
connect to. Control access to your models by configuring the VPC. For
more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/neo-vpc.html">Protect
Compilation Jobs by Using an Amazon Virtual Private Cloud</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_compilation_job_:_StoppingCondition">StoppingCondition</code></td>
<td><p>[required] Specifies a limit to how long a model compilation job
can run. When the job reaches the time limit, Amazon SageMaker ends the
compilation job. Use this API to cap model training costs.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_compilation_job_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompilationJobArn = "string"
    )

### Request syntax

    svc$create_compilation_job(
      CompilationJobName = "string",
      RoleArn = "string",
      ModelPackageVersionArn = "string",
      InputConfig = list(
        S3Uri = "string",
        DataInputConfig = "string",
        Framework = "TENSORFLOW"|"KERAS"|"MXNET"|"ONNX"|"PYTORCH"|"XGBOOST"|"TFLITE"|"DARKNET"|"SKLEARN",
        FrameworkVersion = "string"
      ),
      OutputConfig = list(
        S3OutputLocation = "string",
        TargetDevice = "lambda"|"ml_m4"|"ml_m5"|"ml_c4"|"ml_c5"|"ml_p2"|"ml_p3"|"ml_g4dn"|"ml_inf1"|"ml_eia2"|"jetson_tx1"|"jetson_tx2"|"jetson_nano"|"jetson_xavier"|"rasp3b"|"imx8qm"|"deeplens"|"rk3399"|"rk3288"|"aisage"|"sbe_c"|"qcs605"|"qcs603"|"sitara_am57x"|"amba_cv2"|"amba_cv22"|"amba_cv25"|"x86_win32"|"x86_win64"|"coreml"|"jacinto_tda4vm"|"imx8mplus",
        TargetPlatform = list(
          Os = "ANDROID"|"LINUX",
          Arch = "X86_64"|"X86"|"ARM64"|"ARM_EABI"|"ARM_EABIHF",
          Accelerator = "INTEL_GRAPHICS"|"MALI"|"NVIDIA"|"NNA"
        ),
        CompilerOptions = "string",
        KmsKeyId = "string"
      ),
      VpcConfig = list(
        SecurityGroupIds = list(
          "string"
        ),
        Subnets = list(
          "string"
        )
      ),
      StoppingCondition = list(
        MaxRuntimeInSeconds = 123,
        MaxWaitTimeInSeconds = 123
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
