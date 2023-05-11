version 1.0

task step1{
    meta {
        description: "Test Bandwidth And Resource Schedule"
    }
    input {
        String Title = "fastp report"
    }
    command {
        echo 'hello world' > res.txt
    }
    output {
        # get all the output as array
        File output_step = "res.txt"
    }
}

workflow melt {
    input{
        String Title  = "fastp report"
    }
    call step1 {
        input:
            Title=Title,
    }
}