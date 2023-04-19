import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "hardhat/console.sol";


contract SprintCheckout {

    function transferFrom(address selectedToken, address customer, address merchant, address sprintcheckout, uint amount, uint spcFee) public {
        IERC20 token = IERC20(selectedToken);
        require(
            token.allowance(customer, address(this)) >= amount + spcFee, "Token allowance too low"
        );
        _safeTransferFrom(token, customer, sprintcheckout, spcFee);
        _safeTransferFrom(token, customer, merchant, amount);
    }

    function _safeTransferFrom(
        IERC20 token,
        address sender,
        address recipient,
        uint amount
    ) private {
        bool sent = token.transferFrom(sender, recipient, amount);
        require(sent, "Token transfer failed");
    }
}