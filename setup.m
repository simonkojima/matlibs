dir= fileparts(which(mfilename));
addpath(genpath(dir));
rmpath(genpath(fullfile(dir, '.git')));
