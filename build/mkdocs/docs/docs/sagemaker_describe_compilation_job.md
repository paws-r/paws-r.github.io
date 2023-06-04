<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_compilation_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a model compilation job

### Description

Returns information about a model compilation job.

To create a model compilation job, use `create_compilation_job`. To get
information about multiple model compilation jobs, use
`list_compilation_jobs`.

### Usage

    sagemaker_describe_compilation_job(CompilationJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_compilation_job_:_CompilationJobName">CompilationJobName</code></td>
<td><p>[required] The name of the model compilation job that you want
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompilationJobName = "string",
      CompilationJobArn = "string",
      CompilationJobStatus = "INPROGRESS"|"COMPLETED"|"FAILED"|"STARTING"|"STOPPING"|"STOPPED",
      CompilationStartTime = as.POSIXct(
        "2015-01-01"
      ),
      CompilationEndTime = as.POSIXct(
        "2015-01-01"
      ),
      StoppingCondition = list(
        MaxRuntimeInSeconds = 123,
        MaxWaitTimeInSeconds = 123
      ),
      InferenceImage = "string",
      ModelPackageVersionArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string",
      ModelArtifacts = list(
        S3ModelArtifacts = "string"
      ),
      ModelDigests = list(
        ArtifactDigest = "string"
      ),
      RoleArn = "string",
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
      )
    )

### Request syntax

    svc$describe_compilation_job(
      CompilationJobName = "string"
    )
