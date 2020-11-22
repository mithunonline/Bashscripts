This is a simple yet useful string validator written from Bash, that efficiently finds the match based on the string position and replaces it with a string of choice. 


$ cat tst.awk
BEGIN { FS=OFS="|" }
NR==1 { outNf=NF; print; next }
{
    end = beg + (NF - outNf) - 1
    for (i=1; i<=NF; i++) {
        sep = (i>=beg && i<=end ? "#" : OFS)
        printf "%s%s", $i, (i<NF ? sep : ORS)
    }
}

$ awk -v beg=3 -f tst.awk file
