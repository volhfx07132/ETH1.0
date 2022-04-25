[Unit]
Description=TSC validator 1 service
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=5
User=bap
+ExecStart=/bin/sh -c '/home/bap/project/heco-chain/build/bin/geth --config /home/bap/project/heco-chain/config.toml
          --datadir /home/bap/project/heco-chain/node1 --syncmode full --mine --miner.threads 1
          --unlock 284f1b828bDc33508eb1E660389039859a730A7c --password /home/bap/project/heco-chain/val1.pass --port 32669'
[Install]
WantedBy=multi-user.target
////////////////////////////////////////
[Unit]
Description=TSC validator 1 service
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=5
User=bap
ExecStart=/bin/sh -c '/usr/local/bin/geth --config /home/thachpv/projects/triam-sc/tsc-network/config1.toml 
          --datadir /home/thachpv/projects/triam-sc/tsc-network/node1 --syncmode full --mine --miner.threads 1 
          --unlock val1-address --password /home/thachpv/projects/triam-sc/tsc-network/val1.pass'
[Install]
WantedBy=multi-user.target
//////////////////////////////////////////
[Unit]
Description=TSC validator 1 service
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=5
User=thachpv
ExecStart=/bin/sh -c '/usr/local/bin/geth --config /home/thachpv/projects/triam-sc/tsc-network/config1.toml --datadir /home/thachpv/projects/triam-sc/tsc-network/node1 --syncmode full --mine --miner.threads 1 --unlock val1-address --password /home/thachpv/projects/triam-sc/tsc-network/val1.pass'
[Install]
WantedBy=multi-user.target




