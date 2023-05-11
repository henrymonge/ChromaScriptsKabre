# ChromaScriptsKabre

Para instalar en kabre seguir los siguientes pasos en kabre:
- cd /work/$USER
- git clone https://github.com/henrymonge/ChromaScriptsKabre.git
- cd ChromaScriptsKabre/src
- sbatch populate.sh    (Esto va a tardar como muchas horas, quizá un día. El último en descargarse es llvm, ese si va a tomar como 1.5 días en kabre)
- cd ../cuda
- sbatch compilar.sh
